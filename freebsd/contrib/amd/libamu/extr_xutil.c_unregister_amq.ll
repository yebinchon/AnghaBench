; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_unregister_amq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_unregister_amq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_AMQ = common dso_local global i32 0, align 4
@AMQ_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to de-register Amd program %lu, version %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_amq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @D_AMQ, align 4
  %3 = call i64 @amuDebug(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = call i32 (...) @get_amd_program_number()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @AMQ_VERSION, align 4
  %9 = call i32 @pmap_unset(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @AMQ_VERSION, align 4
  %14 = call i32 @dlog(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %5
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @get_amd_program_number(...) #1

declare dso_local i32 @pmap_unset(i32, i32) #1

declare dso_local i32 @dlog(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
