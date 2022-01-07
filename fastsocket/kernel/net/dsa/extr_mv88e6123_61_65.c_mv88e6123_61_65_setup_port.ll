; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETH_P_EDSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32)* @mv88e6123_61_65_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6123_61_65_setup_port(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @REG_PORT(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_WRITE(i32 %22, i32 1, i32 62)
  br label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @REG_WRITE(i32 %25, i32 1, i32 3)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_WRITE(i32 %28, i32 2, i32 0)
  store i32 1075, i32* %6, align 4
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %36 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @ETH_P_EDSA, align 4
  %41 = call i64 @htons(i32 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 13056
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, 256
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %52 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 256
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %64 = call i32 @dsa_upstream_port(%struct.dsa_switch* %63)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, 12
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @REG_WRITE(i32 %70, i32 4, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 32768, i32 0
  %80 = call i32 @REG_WRITE(i32 %73, i32 5, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, 15
  %83 = shl i32 %82, 12
  store i32 %83, i32* %6, align 4
  %84 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %69
  %89 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %90 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %100

94:                                               ; preds = %69
  %95 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %96 = call i32 @dsa_upstream_port(%struct.dsa_switch* %95)
  %97 = shl i32 1, %96
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @REG_WRITE(i32 %101, i32 6, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @REG_WRITE(i32 %104, i32 7, i32 0)
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @REG_WRITE(i32 %106, i32 8, i32 8320)
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @REG_WRITE(i32 %108, i32 9, i32 1)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @REG_WRITE(i32 %110, i32 10, i32 0)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %4, align 4
  %114 = shl i32 1, %113
  %115 = call i32 @REG_WRITE(i32 %112, i32 11, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @REG_WRITE(i32 %116, i32 12, i32 0)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @REG_WRITE(i32 %118, i32 13, i32 0)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ETH_P_EDSA, align 4
  %122 = call i32 @REG_WRITE(i32 %120, i32 15, i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @REG_WRITE(i32 %123, i32 24, i32 12816)
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @REG_WRITE(i32 %125, i32 25, i32 30292)
  ret i32 0
}

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dsa_upstream_port(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
