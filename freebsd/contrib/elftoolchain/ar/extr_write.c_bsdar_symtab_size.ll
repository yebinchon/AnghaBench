; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_bsdar_symtab_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_bsdar_symtab_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32, i32, i32 }

@AR_BSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bsdar*)* @bsdar_symtab_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bsdar_symtab_size(%struct.bsdar* %0) #0 {
  %2 = alloca %struct.bsdar*, align 8
  %3 = alloca i64, align 8
  store %struct.bsdar* %0, %struct.bsdar** %2, align 8
  %4 = load %struct.bsdar*, %struct.bsdar** %2, align 8
  %5 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AR_BSD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.bsdar*, %struct.bsdar** %2, align 8
  %12 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = add i64 16, %16
  %18 = load %struct.bsdar*, %struct.bsdar** %2, align 8
  %19 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %17, %21
  store i64 %22, i64* %3, align 8
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.bsdar*, %struct.bsdar** %2, align 8
  %25 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 4, %28
  %30 = load %struct.bsdar*, %struct.bsdar** %2, align 8
  %31 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %29, %33
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %23, %10
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
