; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_check_sym_deps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_check_sym_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.property*, %struct.TYPE_4__ }
%struct.property = type { i64, i32, %struct.TYPE_3__, %struct.property* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@P_CHOICE = common dso_local global i64 0, align 8
@P_SELECT = common dso_local global i64 0, align 8
@P_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.symbol*)* @sym_check_sym_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @sym_check_sym_deps(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.property*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %6 = load %struct.symbol*, %struct.symbol** %3, align 8
  %7 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.symbol* @sym_check_expr_deps(i32 %9)
  store %struct.symbol* %10, %struct.symbol** %4, align 8
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = icmp ne %struct.symbol* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %14, %struct.symbol** %2, align 8
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.symbol*, %struct.symbol** %3, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load %struct.property*, %struct.property** %17, align 8
  store %struct.property* %18, %struct.property** %5, align 8
  br label %19

19:                                               ; preds = %64, %15
  %20 = load %struct.property*, %struct.property** %5, align 8
  %21 = icmp ne %struct.property* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load %struct.property*, %struct.property** %5, align 8
  %24 = getelementptr inbounds %struct.property, %struct.property* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @P_CHOICE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.property*, %struct.property** %5, align 8
  %30 = getelementptr inbounds %struct.property, %struct.property* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @P_SELECT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.property*, %struct.property** %5, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.symbol* @sym_check_expr_deps(i32 %39)
  store %struct.symbol* %40, %struct.symbol** %4, align 8
  %41 = load %struct.symbol*, %struct.symbol** %4, align 8
  %42 = icmp ne %struct.symbol* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %68

44:                                               ; preds = %35
  %45 = load %struct.property*, %struct.property** %5, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @P_DEFAULT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.symbol*, %struct.symbol** %3, align 8
  %52 = call i64 @sym_is_choice(%struct.symbol* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %44
  br label %64

55:                                               ; preds = %50
  %56 = load %struct.property*, %struct.property** %5, align 8
  %57 = getelementptr inbounds %struct.property, %struct.property* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.symbol* @sym_check_expr_deps(i32 %58)
  store %struct.symbol* %59, %struct.symbol** %4, align 8
  %60 = load %struct.symbol*, %struct.symbol** %4, align 8
  %61 = icmp ne %struct.symbol* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %68

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %54, %34
  %65 = load %struct.property*, %struct.property** %5, align 8
  %66 = getelementptr inbounds %struct.property, %struct.property* %65, i32 0, i32 3
  %67 = load %struct.property*, %struct.property** %66, align 8
  store %struct.property* %67, %struct.property** %5, align 8
  br label %19

68:                                               ; preds = %62, %43, %19
  %69 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %69, %struct.symbol** %2, align 8
  br label %70

70:                                               ; preds = %68, %13
  %71 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %71
}

declare dso_local %struct.symbol* @sym_check_expr_deps(i32) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
