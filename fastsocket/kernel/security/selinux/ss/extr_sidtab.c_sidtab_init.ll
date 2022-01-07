; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i32, i32, i64, i64, i32** }

@SIDTAB_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_init(%struct.sidtab* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sidtab*, align 8
  %4 = alloca i32, align 4
  store %struct.sidtab* %0, %struct.sidtab** %3, align 8
  %5 = load i32, i32* @SIDTAB_SIZE, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i32** @kmalloc(i32 %8, i32 %9)
  %11 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %12 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %11, i32 0, i32 4
  store i32** %10, i32*** %12, align 8
  %13 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %14 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %13, i32 0, i32 4
  %15 = load i32**, i32*** %14, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SIDTAB_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %27 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %26, i32 0, i32 4
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %37 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %39 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %41 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %43 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
