; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_swapfb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_swapfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlfb_data*)* @swapfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapfb(%struct.dlfb_data* %0) #0 {
  %2 = alloca %struct.dlfb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %2, align 8
  %5 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %6 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %5, i32 0, i32 3
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %9 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %12 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %15 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %18 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %20 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @dlfb_set_register(i8* %22, i32 255, i32 0)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %26 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 16
  %29 = trunc i32 %28 to i8
  %30 = sext i8 %29 to i32
  %31 = call i8* @dlfb_set_register(i8* %24, i32 32, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %34 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 8
  %37 = trunc i32 %36 to i8
  %38 = sext i8 %37 to i32
  %39 = call i8* @dlfb_set_register(i8* %32, i32 33, i32 %38)
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %42 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = trunc i32 %43 to i8
  %45 = sext i8 %44 to i32
  %46 = call i8* @dlfb_set_register(i8* %40, i32 34, i32 %45)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @dlfb_set_register(i8* %47, i32 255, i32 0)
  store i8* %48, i8** %4, align 8
  %49 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %52 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %50 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %49, i32 %57)
  %59 = load %struct.dlfb_data*, %struct.dlfb_data** %2, align 8
  %60 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %59, i32 0, i32 3
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dlfb_set_register(i8*, i32, i32) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
