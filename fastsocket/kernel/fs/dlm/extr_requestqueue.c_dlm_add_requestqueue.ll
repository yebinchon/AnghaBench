; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_requestqueue.c_dlm_add_requestqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_requestqueue.c_dlm_add_requestqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32 }
%struct.dlm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rq_entry = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dlm_add_requestqueue: out of memory len %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_add_requestqueue(%struct.dlm_ls* %0, i32 %1, %struct.dlm_message* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca %struct.rq_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dlm_message* %2, %struct.dlm_message** %6, align 8
  %9 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 12, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call %struct.rq_entry* @kmalloc(i32 %19, i32 %20)
  store %struct.rq_entry* %21, %struct.rq_entry** %7, align 8
  %22 = load %struct.rq_entry*, %struct.rq_entry** %7, align 8
  %23 = icmp ne %struct.rq_entry* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %50

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.rq_entry*, %struct.rq_entry** %7, align 8
  %30 = getelementptr inbounds %struct.rq_entry, %struct.rq_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rq_entry*, %struct.rq_entry** %7, align 8
  %32 = getelementptr inbounds %struct.rq_entry, %struct.rq_entry* %31, i32 0, i32 2
  %33 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %34 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %35 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %32, %struct.dlm_message* %33, i32 %37)
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.rq_entry*, %struct.rq_entry** %7, align 8
  %43 = getelementptr inbounds %struct.rq_entry, %struct.rq_entry* %42, i32 0, i32 1
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %45 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %48 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %27, %24
  ret void
}

declare dso_local %struct.rq_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @log_print(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dlm_message*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
