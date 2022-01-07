; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_write_svr4_symtab_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_write_svr4_symtab_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i64, i64*, i32*, i32 }
%struct.archive = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, %struct.archive*)* @write_svr4_symtab_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_svr4_symtab_entry(%struct.bsdar* %0, %struct.archive* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store %struct.archive* %1, %struct.archive** %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %10 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %15 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @htobe32(i64 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %23 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %21, i64* %26, align 8
  br label %27

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %7

30:                                               ; preds = %7
  %31 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %32 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @htobe32(i64 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %37 = load %struct.archive*, %struct.archive** %4, align 8
  %38 = call i32 @write_data(%struct.bsdar* %36, %struct.archive* %37, i32* %5, i32 8)
  %39 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %40 = load %struct.archive*, %struct.archive** %4, align 8
  %41 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %42 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = bitcast i64* %43 to i32*
  %45 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %46 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @write_data(%struct.bsdar* %39, %struct.archive* %40, i32* %44, i32 %49)
  %51 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %52 = load %struct.archive*, %struct.archive** %4, align 8
  %53 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %54 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %57 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @write_data(%struct.bsdar* %51, %struct.archive* %52, i32* %55, i32 %58)
  ret void
}

declare dso_local i8* @htobe32(i64) #1

declare dso_local i32 @write_data(%struct.bsdar*, %struct.archive*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
