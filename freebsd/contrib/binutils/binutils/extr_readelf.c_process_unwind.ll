; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_unwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.unwind_handler = type { i32, i32 (i32*)* }

@EM_IA_64 = common dso_local global i32 0, align 4
@ia64_process_unwind = common dso_local global i32 0, align 4
@EM_PARISC = common dso_local global i32 0, align 4
@hppa_process_unwind = common dso_local global i32 0, align 4
@do_unwind = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"\0AThere are no unwind sections in this file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @process_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_unwind(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [3 x %struct.unwind_handler], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = getelementptr inbounds [3 x %struct.unwind_handler], [3 x %struct.unwind_handler]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %6, i32 0, i32 0
  %8 = load i32, i32* @EM_IA_64, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %6, i32 0, i32 1
  %10 = load i32, i32* @ia64_process_unwind, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32 (i32*)*
  store i32 (i32*)* %12, i32 (i32*)** %9, align 8
  %13 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %6, i64 1
  %14 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %13, i32 0, i32 0
  %15 = load i32, i32* @EM_PARISC, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %13, i32 0, i32 1
  %17 = load i32, i32* @hppa_process_unwind, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32 (i32*)*
  store i32 (i32*)* %19, i32 (i32*)** %16, align 8
  %20 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %13, i64 1
  %21 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %20, i32 0, i32 0
  store i32 0, i32* %21, align 16
  %22 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %20, i32 0, i32 1
  store i32 (i32*)* null, i32 (i32*)** %22, align 8
  %23 = load i32, i32* @do_unwind, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

26:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x %struct.unwind_handler], [3 x %struct.unwind_handler]* %4, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %30, i32 0, i32 1
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = icmp ne i32 (i32*)* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.unwind_handler], [3 x %struct.unwind_handler]* %4, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x %struct.unwind_handler], [3 x %struct.unwind_handler]* %4, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.unwind_handler, %struct.unwind_handler* %45, i32 0, i32 1
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 %47(i32* %48)
  store i32 %49, i32* %2, align 4
  br label %57

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %27
  %55 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @printf(i8* %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %42, %25
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
