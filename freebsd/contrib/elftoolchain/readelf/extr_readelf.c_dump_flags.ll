; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flag_desc = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" unknown (0x%jx)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flag_desc*, i32)* @dump_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_flags(%struct.flag_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.flag_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flag_desc*, align 8
  store %struct.flag_desc* %0, %struct.flag_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.flag_desc*, %struct.flag_desc** %3, align 8
  store %struct.flag_desc* %6, %struct.flag_desc** %5, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load %struct.flag_desc*, %struct.flag_desc** %5, align 8
  %9 = getelementptr inbounds %struct.flag_desc, %struct.flag_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.flag_desc*, %struct.flag_desc** %5, align 8
  %15 = getelementptr inbounds %struct.flag_desc, %struct.flag_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.flag_desc*, %struct.flag_desc** %5, align 8
  %21 = getelementptr inbounds %struct.flag_desc, %struct.flag_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.flag_desc*, %struct.flag_desc** %5, align 8
  %27 = getelementptr inbounds %struct.flag_desc, %struct.flag_desc* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %19, %12
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.flag_desc*, %struct.flag_desc** %5, align 8
  %33 = getelementptr inbounds %struct.flag_desc, %struct.flag_desc* %32, i32 1
  store %struct.flag_desc* %33, %struct.flag_desc** %5, align 8
  br label %7

34:                                               ; preds = %7
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
