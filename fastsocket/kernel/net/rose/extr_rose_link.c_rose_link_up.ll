; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_neigh = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@rose_callsign = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rose_neigh*)* @rose_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_link_up(%struct.rose_neigh* %0) #0 {
  %2 = alloca %struct.rose_neigh*, align 8
  %3 = alloca i32*, align 8
  store %struct.rose_neigh* %0, %struct.rose_neigh** %2, align 8
  %4 = call i64 @ax25cmp(i32* @rose_callsign, i32* @null_ax25_address)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %8 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %3, align 8
  br label %14

13:                                               ; preds = %1
  store i32* @rose_callsign, i32** %3, align 8
  br label %14

14:                                               ; preds = %13, %6
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %17 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %16, i32 0, i32 3
  %18 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %19 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %22 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32* @ax25_find_cb(i32* %15, i32* %17, i32 %20, %struct.TYPE_2__* %23)
  %25 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %26 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %28 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32* @ax25_find_cb(i32*, i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
