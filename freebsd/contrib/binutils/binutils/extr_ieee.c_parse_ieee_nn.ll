; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee_nn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_parse_ieee_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee_var* }
%struct.ieee_var = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal variable index\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_info*, i32**)* @parse_ieee_nn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ieee_nn(%struct.ieee_info* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee_info*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee_info* %0, %struct.ieee_info** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = call i32 @ieee_read_number(%struct.ieee_info* %13, i32** %14, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = call i32 @ieee_read_id(%struct.ieee_info* %18, i32** %19, i8** %8, i64* %9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %116

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ieee_error(%struct.ieee_info* %28, i32* %29, i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %116

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %38 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %33
  %43 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %44 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 4, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = mul i32 %56, 2
  store i32 %57, i32* %10, align 4
  br label %51

58:                                               ; preds = %51
  %59 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %60 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.ieee_var*, %struct.ieee_var** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 16
  %66 = trunc i64 %65 to i32
  %67 = call i64 @xrealloc(%struct.ieee_var* %62, i32 %66)
  %68 = inttoptr i64 %67 to %struct.ieee_var*
  %69 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %70 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.ieee_var* %68, %struct.ieee_var** %71, align 8
  %72 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %73 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.ieee_var*, %struct.ieee_var** %74, align 8
  %76 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %77 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %75, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %84 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub i32 %82, %86
  %88 = zext i32 %87 to i64
  %89 = mul i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(%struct.ieee_var* %81, i32 0, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %94 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %58, %33
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %99 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.ieee_var*, %struct.ieee_var** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %101, i64 %103
  %105 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %104, i32 0, i32 0
  store i8* %97, i8** %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.ieee_info*, %struct.ieee_info** %4, align 8
  %108 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.ieee_var*, %struct.ieee_var** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %110, i64 %112
  %114 = getelementptr inbounds %struct.ieee_var, %struct.ieee_var* %113, i32 0, i32 1
  store i64 %106, i64* %114, align 8
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %96, %27, %22
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ieee_read_number(%struct.ieee_info*, i32**, i32*) #1

declare dso_local i32 @ieee_read_id(%struct.ieee_info*, i32**, i8**, i64*) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xrealloc(%struct.ieee_var*, i32) #1

declare dso_local i32 @memset(%struct.ieee_var*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
