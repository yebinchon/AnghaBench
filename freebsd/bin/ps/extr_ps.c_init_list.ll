; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_init_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ps/extr_ps.c_init_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listinfo = type { i32, i8*, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.listinfo*, i32, i32, i8*)* @init_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_list(%struct.listinfo* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.listinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.listinfo* %0, %struct.listinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %10 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %12 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %15 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %18 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %21 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.listinfo*, %struct.listinfo** %5, align 8
  %23 = getelementptr inbounds %struct.listinfo, %struct.listinfo* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
