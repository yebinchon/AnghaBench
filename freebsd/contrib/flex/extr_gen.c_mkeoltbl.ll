; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkeoltbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_mkeoltbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_data = type { i32, i32*, i32 }

@YYTD_ID_RULE_CAN_MATCH_EOL = common dso_local global i32 0, align 4
@YYTD_DATA8 = common dso_local global i32 0, align 4
@num_rules = common dso_local global i32 0, align 4
@rule_has_nl = common dso_local global i64* null, align 8
@yydmap_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"\09{YYTD_ID_RULE_CAN_MATCH_EOL, (void**)&yy_rule_can_match_eol, sizeof(%s)},\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"flex_int32_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.yytbl_data* ()* @mkeoltbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.yytbl_data* @mkeoltbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.yytbl_data*, align 8
  store i32* null, i32** %2, align 8
  %4 = call i64 @calloc(i32 1, i32 24)
  %5 = inttoptr i64 %4 to %struct.yytbl_data*
  store %struct.yytbl_data* %5, %struct.yytbl_data** %3, align 8
  %6 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %7 = load i32, i32* @YYTD_ID_RULE_CAN_MATCH_EOL, align 4
  %8 = call i32 @yytbl_data_init(%struct.yytbl_data* %6, i32 %7)
  %9 = load i32, i32* @YYTD_DATA8, align 4
  %10 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %11 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @num_rules, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %15 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %17 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @calloc(i32 %18, i32 4)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %2, align 8
  %21 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  %22 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %40, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @num_rules, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i64*, i64** @rule_has_nl, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %23

43:                                               ; preds = %23
  %44 = call i32 @buf_prints(i32* @yydmap_buf, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.yytbl_data*, %struct.yytbl_data** %3, align 8
  ret %struct.yytbl_data* %45
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
