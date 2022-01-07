; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkssltbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkssltbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_data = type { i32, i32, i32*, i64 }

@YYTD_ID_START_STATE_LIST = common dso_local global i32 0, align 4
@YYTD_DATA32 = common dso_local global i32 0, align 4
@YYTD_PTRANS = common dso_local global i32 0, align 4
@lastsc = common dso_local global i32 0, align 4
@base = common dso_local global i32* null, align 8
@yydmap_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"\09{YYTD_ID_START_STATE_LIST, (void**)&yy_start_state_list, sizeof(%s)},\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"struct yy_trans_info*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.yytbl_data* ()* @mkssltbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.yytbl_data* @mkssltbl() #0 {
  %1 = alloca %struct.yytbl_data*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store %struct.yytbl_data* null, %struct.yytbl_data** %1, align 8
  store i32* null, i32** %2, align 8
  %4 = call i64 @calloc(i32 1, i32 24)
  %5 = inttoptr i64 %4 to %struct.yytbl_data*
  store %struct.yytbl_data* %5, %struct.yytbl_data** %1, align 8
  %6 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %7 = load i32, i32* @YYTD_ID_START_STATE_LIST, align 4
  %8 = call i32 @yytbl_data_init(%struct.yytbl_data* %6, i32 %7)
  %9 = load i32, i32* @YYTD_DATA32, align 4
  %10 = load i32, i32* @YYTD_PTRANS, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %13 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %15 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @lastsc, align 4
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %17, 1
  %19 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %20 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %22 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @calloc(i32 %23, i32 4)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %2, align 8
  %26 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  %27 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %43, %0
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @lastsc, align 4
  %31 = mul nsw i32 %30, 2
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32*, i32** @base, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %28

46:                                               ; preds = %28
  %47 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.yytbl_data*, %struct.yytbl_data** %1, align 8
  ret %struct.yytbl_data* %48
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @buf_prints(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
