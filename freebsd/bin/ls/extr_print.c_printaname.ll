; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printaname.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printaname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.stat* }
%struct.stat = type { i32, i32, i64 }

@f_inode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%*ju \00", align 1
@f_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%*jd \00", align 1
@blocksize = common dso_local global i32 0, align 4
@f_type = common dso_local global i64 0, align 8
@f_color = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64)* @printaname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printaname(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.stat*, %struct.stat** %10, align 8
  store %struct.stat* %11, %struct.stat** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @f_inode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.stat*, %struct.stat** %7, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %14, %3
  %27 = load i64, i64* @f_size, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.stat*, %struct.stat** %7, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @blocksize, align 4
  %36 = call i32 @howmany(i32 %34, i32 %35)
  %37 = call i64 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %29, %26
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @printname(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i64, i64* @f_type, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.stat*, %struct.stat** %7, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @printtype(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %42
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i64 @printf(i8*, i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @printname(i32) #1

declare dso_local i64 @printtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
