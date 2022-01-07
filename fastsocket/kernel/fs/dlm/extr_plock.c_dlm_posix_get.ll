; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_dlm_posix_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_plock.c_dlm_posix_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64, i32, i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dlm_ls = type { i32 }
%struct.plock_op = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i8*, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DLM_PLOCK_OP_GET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@recv_wq = common dso_local global i32 0, align 4
@ops_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dlm_posix_get: op on list %llx\00", align 1
@F_UNLCK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@FL_POSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_posix_get(i32* %0, i64 %1, %struct.file* %2, %struct.file_lock* %3) #0 {
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
  br label %181

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.plock_op* @kzalloc(i32 64, i32 %21)
  store %struct.plock_op* %22, %struct.plock_op** %11, align 8
  %23 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %24 = icmp ne %struct.plock_op* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %177

28:                                               ; preds = %20
  %29 = load i32, i32* @DLM_PLOCK_OP_GET, align 4
  %30 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %31 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 4
  %33 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %37 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i64 %35, i64* %38, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %40 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @F_WRLCK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %46 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %49 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %52 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  store i32 %50, i32* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %56 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  store i64 %54, i64* %57, align 8
  %58 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %62 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %68 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 6
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %28
  %75 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 6
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %83 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %87 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  store i8* %85, i8** %88, align 8
  br label %97

89:                                               ; preds = %74, %28
  %90 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %91 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %95 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %81
  %98 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %99 = call i32 @send_op(%struct.plock_op* %98)
  %100 = load i32, i32* @recv_wq, align 4
  %101 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %102 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @wait_event(i32 %100, i32 %105)
  %107 = call i32 @spin_lock(i32* @ops_lock)
  %108 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %109 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %108, i32 0, i32 2
  %110 = call i32 @list_empty(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %97
  %113 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @log_error(%struct.dlm_ls* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %117 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %116, i32 0, i32 2
  %118 = call i32 @list_del(i32* %117)
  br label %119

119:                                              ; preds = %112, %97
  %120 = call i32 @spin_unlock(i32* @ops_lock)
  %121 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %122 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i64, i64* @F_UNLCK, align 8
  %126 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %127 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  br label %174

133:                                              ; preds = %119
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %133
  %137 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %138 = call i32 @locks_init_lock(%struct.file_lock* %137)
  %139 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %140 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i64, i64* @F_WRLCK, align 8
  br label %148

146:                                              ; preds = %136
  %147 = load i64, i64* @F_RDLCK, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %151 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @FL_POSIX, align 4
  %153 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %154 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %156 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %160 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %162 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %166 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %168 = getelementptr inbounds %struct.plock_op, %struct.plock_op* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %172 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %148, %133
  br label %174

174:                                              ; preds = %173, %132
  %175 = load %struct.plock_op*, %struct.plock_op** %11, align 8
  %176 = call i32 @kfree(%struct.plock_op* %175)
  br label %177

177:                                              ; preds = %174, %25
  %178 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %179 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %178)
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %17
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local %struct.plock_op* @kzalloc(i32, i32) #1

declare dso_local i32 @send_op(%struct.plock_op*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @kfree(%struct.plock_op*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
