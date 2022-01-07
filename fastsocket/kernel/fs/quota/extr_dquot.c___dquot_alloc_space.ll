; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c___dquot_alloc_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c___dquot_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64* }
%struct.TYPE_2__ = type { i32 }

@QUOTA_OK = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_SPACE_WARN = common dso_local global i32 0, align 4
@DQUOT_SPACE_RESERVE = common dso_local global i32 0, align 4
@DQUOT_SPACE_NOFAIL = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@dq_data_lock = common dso_local global i32 0, align 4
@NO_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dquot_alloc_space(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @QUOTA_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MAXQUOTAS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DQUOT_SPACE_WARN, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DQUOT_SPACE_RESERVE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DQUOT_SPACE_NOFAIL, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i64 @IS_NOQUOTA(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @inode_incr_space(%struct.inode* %32, i32 %33, i32 %34)
  br label %197

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_2__* @sb_dqopt(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @down_read(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i64 @IS_NOQUOTA(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @inode_incr_space(%struct.inode* %47, i32 %48, i32 %49)
  br label %190

51:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %61, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MAXQUOTAS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %18, i64 %59
  store i8 %57, i8* %60, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %52

64:                                               ; preds = %52
  %65 = call i32 @spin_lock(i32* @dq_data_lock)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %103, %64
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MAXQUOTAS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %103

80:                                               ; preds = %70
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %18, i64 %91
  %93 = call i32 @check_bdq(i64 %87, i32 %88, i32 %89, i8* %92)
  %94 = load i32, i32* @NO_QUOTA, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %80
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @NO_QUOTA, align 4
  store i32 %100, i32* %8, align 4
  %101 = call i32 @spin_unlock(i32* @dq_data_lock)
  br label %185

102:                                              ; preds = %96, %80
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %66

106:                                              ; preds = %66
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %145, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @MAXQUOTAS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %145

121:                                              ; preds = %111
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @dquot_resv_space(i64 %131, i32 %132)
  br label %144

134:                                              ; preds = %121
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @dquot_incr_space(i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %134, %124
  br label %145

145:                                              ; preds = %144, %120
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %107

148:                                              ; preds = %107
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @inode_incr_space(%struct.inode* %149, i32 %150, i32 %151)
  %153 = call i32 @spin_unlock(i32* @dq_data_lock)
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %185

157:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %181, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @MAXQUOTAS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %158
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %162
  %172 = load %struct.inode*, %struct.inode** %4, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @mark_dquot_dirty(i64 %178)
  br label %180

180:                                              ; preds = %171, %162
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %158

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %156, %99
  %186 = load %struct.inode*, %struct.inode** %4, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = call i32 @flush_warnings(i64* %188, i8* %18)
  br label %190

190:                                              ; preds = %185, %46
  %191 = load %struct.inode*, %struct.inode** %4, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call %struct.TYPE_2__* @sb_dqopt(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = call i32 @up_read(i32* %195)
  br label %197

197:                                              ; preds = %190, %31
  %198 = load i32, i32* %8, align 4
  %199 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %199)
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #2

declare dso_local i32 @inode_incr_space(%struct.inode*, i32, i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @check_bdq(i64, i32, i32, i8*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @dquot_resv_space(i64, i32) #2

declare dso_local i32 @dquot_incr_space(i64, i32) #2

declare dso_local i32 @mark_dquot_dirty(i64) #2

declare dso_local i32 @flush_warnings(i64*, i8*) #2

declare dso_local i32 @up_read(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
