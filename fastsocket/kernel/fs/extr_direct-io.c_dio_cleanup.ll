; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*, %struct.dio_submit*)* @dio_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_cleanup(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca %struct.dio*, align 8
  %4 = alloca %struct.dio_submit*, align 8
  store %struct.dio* %0, %struct.dio** %3, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %4, align 8
  br label %5

5:                                                ; preds = %9, %2
  %6 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %7 = call i64 @dio_pages_present(%struct.dio_submit* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct.dio*, %struct.dio** %3, align 8
  %11 = load %struct.dio_submit*, %struct.dio_submit** %4, align 8
  %12 = call i32 @dio_get_page(%struct.dio* %10, %struct.dio_submit* %11)
  %13 = call i32 @page_cache_release(i32 %12)
  br label %5

14:                                               ; preds = %5
  ret void
}

declare dso_local i64 @dio_pages_present(%struct.dio_submit*) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @dio_get_page(%struct.dio*, %struct.dio_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
