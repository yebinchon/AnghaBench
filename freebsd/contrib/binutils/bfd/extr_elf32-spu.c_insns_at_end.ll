; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_insns_at_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_insns_at_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.function_info*, i8*)* @insns_at_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insns_at_end(%struct.function_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.function_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.function_info* %0, %struct.function_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.function_info*, %struct.function_info** %4, align 8
  %8 = getelementptr inbounds %struct.function_info, %struct.function_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 3
  %11 = and i32 %10, -4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.function_info*, %struct.function_info** %4, align 8
  %20 = getelementptr inbounds %struct.function_info, %struct.function_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @is_nop(i32 %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr i8, i8* %28, i64 4
  store i8* %29, i8** %6, align 8
  br label %14

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.function_info*, %struct.function_info** %4, align 8
  %38 = getelementptr inbounds %struct.function_info, %struct.function_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.function_info*, %struct.function_info** %4, align 8
  %44 = getelementptr inbounds %struct.function_info, %struct.function_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @is_nop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
