; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_write_bsd_symtab_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_write_bsd_symtab_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32, i8*, i32, i64* }
%struct.archive = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, %struct.archive*)* @write_bsd_symtab_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bsd_symtab_entry(%struct.bsdar* %0, %struct.archive* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store %struct.archive* %1, %struct.archive** %4, align 8
  %10 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %11 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %17 = load %struct.archive*, %struct.archive** %4, align 8
  %18 = call i32 @write_data(%struct.bsdar* %16, %struct.archive* %17, i64* %5, i32 8)
  store i64 0, i64* %9, align 8
  %19 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %20 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %57, %2
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %25 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %32 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %38 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %44 = load %struct.archive*, %struct.archive** %4, align 8
  %45 = call i32 @write_data(%struct.bsdar* %43, %struct.archive* %44, i64* %7, i32 8)
  %46 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = call i32 @write_data(%struct.bsdar* %46, %struct.archive* %47, i64* %6, i32 8)
  br label %49

49:                                               ; preds = %55, %29
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %49

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %22

60:                                               ; preds = %22
  %61 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %62 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %66 = load %struct.archive*, %struct.archive** %4, align 8
  %67 = call i32 @write_data(%struct.bsdar* %65, %struct.archive* %66, i64* %5, i32 8)
  %68 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %69 = load %struct.archive*, %struct.archive** %4, align 8
  %70 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %71 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i64*
  %74 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %75 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @write_data(%struct.bsdar* %68, %struct.archive* %69, i64* %73, i32 %76)
  ret void
}

declare dso_local i32 @write_data(%struct.bsdar*, %struct.archive*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
