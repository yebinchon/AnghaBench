; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_dlm_posix_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_dlm_posix_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32, i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dlm_ls = type { i32 }
%struct.plock_op = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32, i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dlm_posix_unlock: vfs unlock error %llx\00", align 1
@DLM_PLOCK_OP_UNLOCK = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@DLM_PLOCK_FL_CLOSE = common dso_local global i32 0, align 4
@recv_wq = common dso_local global i32 0, align 4
@ops_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dlm_posix_unlock: op on list %llx\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_posix_unlock(i32* %0, i64 %1, %struct.file* %2, %struct.file_lock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca %struct.dlm_ls*, align 8
  %11 = alloca %struct.plock_op*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.file_lock* %3, %struct.file_lock** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %13)
  store %struct.dlm_ls* %14, %struct.dlm_ls** %10, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %16 = icmp ne %struct.dlm_ls* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %153

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.plock_op* @kzalloc(i32 72, i32 %21)
  store %struct.plock_op* %22, %struct.plock_op** %11, align 8
  %23 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %24 = icmp ne %struct.plock_op* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %149

28:                                               ; preds = %20
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %31 = call i64 @posix_lock_file_wait(%struct.file* %29, %struct.file_lock* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @log_error(%struct.dlm_ls* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @DLM_PLOCK_OP_UNLOCK, align 4
  %39 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %40 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %46 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  store i64 %44, i64* %47, align 8
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %52 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %56 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i64 %54, i64* %57, align 8
  %58 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %62 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 4
  %64 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %68 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %37
  %75 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %83 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %87 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  br label %97

89:                                               ; preds = %74, %37
  %90 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %91 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %95 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %81
  %98 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %99 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FL_CLOSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* @DLM_PLOCK_FL_CLOSE, align 4
  %106 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %107 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %112 = call i32 @send_op(%struct.plock_op* %111)
  store i32 0, i32* %12, align 4
  br label %149

113:                                              ; preds = %97
  %114 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %115 = call i32 @send_op(%struct.plock_op* %114)
  %116 = load i32, i32* @recv_wq, align 4
  %117 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %118 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @wait_event(i32 %116, i32 %121)
  %123 = call i32 @spin_lock(i32* @ops_lock)
  %124 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %125 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %124, i32 0, i32 2
  %126 = call i32 @list_empty(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %113
  %129 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @log_error(%struct.dlm_ls* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  %132 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %133 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %132, i32 0, i32 2
  %134 = call i32 @list_del(i32* %133)
  br label %135

135:                                              ; preds = %128, %113
  %136 = call i32 @spin_unlock(i32* @ops_lock)
  %137 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %138 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @ENOENT, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %135
  %147 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %148 = call i32 @kfree(%struct.plock_op* %147)
  br label %149

149:                                              ; preds = %146, %104, %25
  %150 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %151 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %17
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local %struct.plock_op* @kzalloc(i32, i32) #1

declare dso_local i64 @posix_lock_file_wait(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i32 @send_op(%struct.plock_op*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.plock_op*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
