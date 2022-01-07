; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32)* @mv88e6131_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6131_setup_port(%struct.dsa_switch* %0, i32 %1) #0 {
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
  %16 = load i32, i32* %15, align 4
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
  store i32 1075, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %30 = call i32 @dsa_upstream_port(%struct.dsa_switch* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 260
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %37 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 256
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @REG_WRITE(i32 %47, i32 4, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 32768, i32 0
  %57 = call i32 @REG_WRITE(i32 %50, i32 5, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 12
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %67 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %46
  %72 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %73 = call i32 @dsa_upstream_port(%struct.dsa_switch* %72)
  %74 = shl i32 1, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @REG_WRITE(i32 %78, i32 6, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @REG_WRITE(i32 %81, i32 7, i32 0)
  %83 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %84 = call i32 @dsa_upstream_port(%struct.dsa_switch* %83)
  %85 = or i32 128, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %88 = call i32 @dsa_upstream_port(%struct.dsa_switch* %87)
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 64
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @REG_WRITE(i32 %94, i32 8, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @REG_WRITE(i32 %97, i32 9, i32 0)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @REG_WRITE(i32 %99, i32 10, i32 0)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = shl i32 1, %102
  %104 = call i32 @REG_WRITE(i32 %101, i32 11, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @REG_WRITE(i32 %105, i32 24, i32 12816)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @REG_WRITE(i32 %107, i32 25, i32 30292)
  ret i32 0
}

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32, i32) #1

declare dso_local i32 @dsa_upstream_port(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
