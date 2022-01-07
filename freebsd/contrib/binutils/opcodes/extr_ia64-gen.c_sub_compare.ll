; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_sub_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_sub_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iclass = type { i32, i64 }

@ics = common dso_local global %struct.iclass** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sub_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sub_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iclass*, align 8
  %7 = alloca %struct.iclass*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.iclass*, %struct.iclass** %8, i64 %12
  %14 = load %struct.iclass*, %struct.iclass** %13, align 8
  store %struct.iclass* %14, %struct.iclass** %6, align 8
  %15 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.iclass*, %struct.iclass** %15, i64 %19
  %21 = load %struct.iclass*, %struct.iclass** %20, align 8
  store %struct.iclass* %21, %struct.iclass** %7, align 8
  %22 = load %struct.iclass*, %struct.iclass** %6, align 8
  %23 = getelementptr inbounds %struct.iclass, %struct.iclass* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.iclass*, %struct.iclass** %7, align 8
  %28 = getelementptr inbounds %struct.iclass, %struct.iclass* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %48

32:                                               ; preds = %26
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.iclass*, %struct.iclass** %7, align 8
  %35 = getelementptr inbounds %struct.iclass, %struct.iclass* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %48

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %32
  %41 = load %struct.iclass*, %struct.iclass** %6, align 8
  %42 = getelementptr inbounds %struct.iclass, %struct.iclass* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iclass*, %struct.iclass** %7, align 8
  %45 = getelementptr inbounds %struct.iclass, %struct.iclass* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcmp(i32 %43, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %38, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
