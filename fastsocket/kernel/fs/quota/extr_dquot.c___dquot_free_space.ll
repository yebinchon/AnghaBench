; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c___dquot_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c___dquot_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64* }
%struct.TYPE_2__ = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_SPACE_RESERVE = common dso_local global i32 0, align 4
@QUOTA_OK = common dso_local global i32 0, align 4
@dq_data_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dquot_free_space(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MAXQUOTAS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DQUOT_SPACE_RESERVE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i64 @IS_NOQUOTA(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @inode_decr_space(%struct.inode* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @QUOTA_OK, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_2__* @sb_dqopt(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @down_read(i32* %35)
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i64 @IS_NOQUOTA(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_2__* @sb_dqopt(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @up_read(i32* %45)
  br label %24

47:                                               ; preds = %30
  %48 = call i32 @spin_lock(i32* @dq_data_lock)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %99, %47
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MAXQUOTAS, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %49
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %99

63:                                               ; preds = %53
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call signext i8 @info_bdq_free(i64 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %16, i64 %74
  store i8 %72, i8* %75, align 1
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %63
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dquot_free_reserved_space(i64 %85, i32 %86)
  br label %98

88:                                               ; preds = %63
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dquot_decr_space(i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %78
  br label %99

99:                                               ; preds = %98, %62
  %100 = load i32, i32* %8, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %49

102:                                              ; preds = %49
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @inode_decr_space(%struct.inode* %103, i32 %104, i32 %105)
  %107 = call i32 @spin_unlock(i32* @dq_data_lock)
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %139

111:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %135, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @MAXQUOTAS, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %112
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %116
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @mark_dquot_dirty(i64 %132)
  br label %134

134:                                              ; preds = %125, %116
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %112

138:                                              ; preds = %112
  br label %139

139:                                              ; preds = %138, %110
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = call i32 @flush_warnings(i64* %142, i8* %16)
  %144 = load %struct.inode*, %struct.inode** %5, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.TYPE_2__* @sb_dqopt(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @up_read(i32* %148)
  %150 = load i32, i32* @QUOTA_OK, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

151:                                              ; preds = %139, %24
  %152 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #2

declare dso_local i32 @inode_decr_space(%struct.inode*, i32, i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local signext i8 @info_bdq_free(i64, i32) #2

declare dso_local i32 @dquot_free_reserved_space(i64, i32) #2

declare dso_local i32 @dquot_decr_space(i64, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @mark_dquot_dirty(i64) #2

declare dso_local i32 @flush_warnings(i64*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
