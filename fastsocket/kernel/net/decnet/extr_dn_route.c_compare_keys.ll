; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_compare_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_compare_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flowi*, %struct.flowi*)* @compare_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_keys(%struct.flowi* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.flowi*, align 8
  %4 = alloca %struct.flowi*, align 8
  store %struct.flowi* %0, %struct.flowi** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %5 = load %struct.flowi*, %struct.flowi** %3, align 8
  %6 = getelementptr inbounds %struct.flowi, %struct.flowi* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.flowi*, %struct.flowi** %4, align 8
  %11 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %9, %14
  %16 = load %struct.flowi*, %struct.flowi** %3, align 8
  %17 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flowi*, %struct.flowi** %4, align 8
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %20, %25
  %27 = or i32 %15, %26
  %28 = load %struct.flowi*, %struct.flowi** %3, align 8
  %29 = getelementptr inbounds %struct.flowi, %struct.flowi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flowi*, %struct.flowi** %4, align 8
  %32 = getelementptr inbounds %struct.flowi, %struct.flowi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = or i32 %27, %34
  %36 = load %struct.flowi*, %struct.flowi** %3, align 8
  %37 = getelementptr inbounds %struct.flowi, %struct.flowi* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.flowi*, %struct.flowi** %4, align 8
  %42 = getelementptr inbounds %struct.flowi, %struct.flowi* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %40, %45
  %47 = or i32 %35, %46
  %48 = load %struct.flowi*, %struct.flowi** %3, align 8
  %49 = getelementptr inbounds %struct.flowi, %struct.flowi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.flowi*, %struct.flowi** %4, align 8
  %52 = getelementptr inbounds %struct.flowi, %struct.flowi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %50, %53
  %55 = or i32 %47, %54
  %56 = load %struct.flowi*, %struct.flowi** %3, align 8
  %57 = getelementptr inbounds %struct.flowi, %struct.flowi* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.flowi*, %struct.flowi** %4, align 8
  %60 = getelementptr inbounds %struct.flowi, %struct.flowi* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %58, %61
  %63 = or i32 %55, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
