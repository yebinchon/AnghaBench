; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_option_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_option_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_option = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c" %-10.10s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mips_option*, i32)* @dump_mips_option_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_option_flags(i8* %0, %struct.mips_option* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mips_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mips_option* %1, %struct.mips_option** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load %struct.mips_option*, %struct.mips_option** %5, align 8
  %10 = getelementptr inbounds %struct.mips_option, %struct.mips_option* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mips_option*, %struct.mips_option** %5, align 8
  %16 = getelementptr inbounds %struct.mips_option, %struct.mips_option* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = load %struct.mips_option*, %struct.mips_option** %5, align 8
  %29 = getelementptr inbounds %struct.mips_option, %struct.mips_option* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %13
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.mips_option*, %struct.mips_option** %5, align 8
  %35 = getelementptr inbounds %struct.mips_option, %struct.mips_option* %34, i32 1
  store %struct.mips_option* %35, %struct.mips_option** %5, align 8
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
