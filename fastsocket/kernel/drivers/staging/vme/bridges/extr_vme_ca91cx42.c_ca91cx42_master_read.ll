; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ca91cx42_master_read(%struct.vme_master_resource* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vme_master_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %11 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %15 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy_fromio(i8* %13, i64 %18, i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %25 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
