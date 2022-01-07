; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_handler = type { i64 }

@INET_DIAG_GETSOCK_MAX = common dso_local global i64 0, align 8
@inet_diag_table_mutex = common dso_local global i32 0, align 4
@inet_diag_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_diag_unregister(%struct.inet_diag_handler* %0) #0 {
  %2 = alloca %struct.inet_diag_handler*, align 8
  %3 = alloca i64, align 8
  store %struct.inet_diag_handler* %0, %struct.inet_diag_handler** %2, align 8
  %4 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %2, align 8
  %5 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @INET_DIAG_GETSOCK_MAX, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @inet_diag_table_mutex)
  %13 = load i32**, i32*** @inet_diag_table, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* null, i32** %15, align 8
  %16 = call i32 @mutex_unlock(i32* @inet_diag_table_mutex)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
