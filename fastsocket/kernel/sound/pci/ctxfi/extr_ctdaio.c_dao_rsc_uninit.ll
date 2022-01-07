; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.TYPE_4__, i32*, i64, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hw = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*)* @dao_rsc_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_rsc_uninit(%struct.dao* %0) #0 {
  %2 = alloca %struct.dao*, align 8
  store %struct.dao* %0, %struct.dao** %2, align 8
  %3 = load %struct.dao*, %struct.dao** %2, align 8
  %4 = getelementptr inbounds %struct.dao, %struct.dao* %3, i32 0, i32 3
  %5 = load i64*, i64** %4, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.dao*, %struct.dao** %2, align 8
  %9 = getelementptr inbounds %struct.dao, %struct.dao* %8, i32 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.dao*, %struct.dao** %2, align 8
  %16 = call i32 @dao_clear_left_input(%struct.dao* %15)
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.dao*, %struct.dao** %2, align 8
  %19 = getelementptr inbounds %struct.dao, %struct.dao* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.dao*, %struct.dao** %2, align 8
  %22 = getelementptr inbounds %struct.dao, %struct.dao* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %20, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.dao*, %struct.dao** %2, align 8
  %31 = call i32 @dao_clear_right_input(%struct.dao* %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load %struct.dao*, %struct.dao** %2, align 8
  %34 = getelementptr inbounds %struct.dao, %struct.dao* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @kfree(i64* %35)
  %37 = load %struct.dao*, %struct.dao** %2, align 8
  %38 = getelementptr inbounds %struct.dao, %struct.dao* %37, i32 0, i32 3
  store i64* null, i64** %38, align 8
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.dao*, %struct.dao** %2, align 8
  %41 = getelementptr inbounds %struct.dao, %struct.dao* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.hw*
  %44 = getelementptr inbounds %struct.hw, %struct.hw* %43, i32 0, i32 0
  %45 = load i32 (i32*)*, i32 (i32*)** %44, align 8
  %46 = load %struct.dao*, %struct.dao** %2, align 8
  %47 = getelementptr inbounds %struct.dao, %struct.dao* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 %45(i32* %48)
  %50 = load %struct.dao*, %struct.dao** %2, align 8
  %51 = getelementptr inbounds %struct.dao, %struct.dao* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.dao*, %struct.dao** %2, align 8
  %53 = getelementptr inbounds %struct.dao, %struct.dao* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.dao*, %struct.dao** %2, align 8
  %55 = getelementptr inbounds %struct.dao, %struct.dao* %54, i32 0, i32 0
  %56 = call i32 @daio_rsc_uninit(%struct.TYPE_4__* %55)
  ret i32 0
}

declare dso_local i32 @dao_clear_left_input(%struct.dao*) #1

declare dso_local i32 @dao_clear_right_input(%struct.dao*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @daio_rsc_uninit(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
