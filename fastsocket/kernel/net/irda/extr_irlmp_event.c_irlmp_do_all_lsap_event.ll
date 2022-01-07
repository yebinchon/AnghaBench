; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp_event.c_irlmp_do_all_lsap_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp_event.c_irlmp_do_all_lsap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsap_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @irlmp_do_all_lsap_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irlmp_do_all_lsap_event(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lsap_cb*, align 8
  %6 = alloca %struct.lsap_cb*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @hashbin_get_first(i32* %7)
  %9 = inttoptr i64 %8 to %struct.lsap_cb*
  store %struct.lsap_cb* %9, %struct.lsap_cb** %5, align 8
  br label %10

10:                                               ; preds = %17, %2
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.lsap_cb*, %struct.lsap_cb** %5, align 8
  %13 = ptrtoint %struct.lsap_cb* %12 to i64
  %14 = bitcast %struct.lsap_cb** %6 to i8*
  %15 = call i32* @hashbin_find_next(i32* %11, i64 %13, i32* null, i8* %14)
  %16 = icmp ne i32* null, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.lsap_cb*, %struct.lsap_cb** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @irlmp_do_lsap_event(%struct.lsap_cb* %18, i32 %19, i32* null)
  %21 = load %struct.lsap_cb*, %struct.lsap_cb** %6, align 8
  store %struct.lsap_cb* %21, %struct.lsap_cb** %5, align 8
  br label %10

22:                                               ; preds = %10
  ret void
}

declare dso_local i64 @hashbin_get_first(i32*) #1

declare dso_local i32* @hashbin_find_next(i32*, i64, i32*, i8*) #1

declare dso_local i32 @irlmp_do_lsap_event(%struct.lsap_cb*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
