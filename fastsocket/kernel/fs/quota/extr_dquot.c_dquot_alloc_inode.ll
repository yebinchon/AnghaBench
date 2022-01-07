; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64* }
%struct.TYPE_2__ = type { i32 }

@NO_QUOTA = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@QUOTA_OK = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@dq_data_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_alloc_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @NO_QUOTA, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @MAXQUOTAS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i64 @IS_NOQUOTA(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @QUOTA_OK, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %163

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAXQUOTAS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %15, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_2__* @sb_dqopt(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i64 @IS_NOQUOTA(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_2__* @sb_dqopt(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load i32, i32* @QUOTA_OK, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %163

52:                                               ; preds = %34
  %53 = call i32 @spin_lock(i32* @dq_data_lock)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %85, %52
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MAXQUOTAS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %85

68:                                               ; preds = %58
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %15, i64 %78
  %80 = call i32 @check_idq(i64 %75, i32 %76, i8* %79)
  %81 = load i32, i32* @NO_QUOTA, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %118

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %54

88:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %113, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MAXQUOTAS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %113

103:                                              ; preds = %93
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @dquot_incr_inodes(i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %103, %102
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %89

116:                                              ; preds = %89
  %117 = load i32, i32* @QUOTA_OK, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %83
  %119 = call i32 @spin_unlock(i32* @dq_data_lock)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @QUOTA_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %147, %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @MAXQUOTAS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %128
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @mark_dquot_dirty(i64 %144)
  br label %146

146:                                              ; preds = %137, %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %124

150:                                              ; preds = %124
  br label %151

151:                                              ; preds = %150, %118
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @flush_warnings(i64* %154, i8* %15)
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_2__* @sb_dqopt(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = call i32 @up_read(i32* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %163

163:                                              ; preds = %151, %44, %19
  %164 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @check_idq(i64, i32, i8*) #2

declare dso_local i32 @dquot_incr_inodes(i64, i32) #2

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
