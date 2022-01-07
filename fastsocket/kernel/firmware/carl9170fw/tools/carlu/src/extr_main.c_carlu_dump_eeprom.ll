; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_dump_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_dump_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"EEPROM:\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carlu_dump_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_dump_eeprom() #0 {
  %1 = alloca %struct.carlu*, align 8
  %2 = alloca [8192 x i32], align 16
  %3 = alloca i32, align 4
  store %struct.carlu* null, %struct.carlu** %1, align 8
  %4 = bitcast [8192 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 32768, i1 false)
  %5 = call i32 (...) @carlu_init()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %31

9:                                                ; preds = %0
  %10 = call %struct.carlu* (...) @carlusb_probe()
  store %struct.carlu* %10, %struct.carlu** %1, align 8
  %11 = load %struct.carlu*, %struct.carlu** %1, align 8
  %12 = call i64 @IS_ERR_OR_NULL(%struct.carlu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.carlu*, %struct.carlu** %1, align 8
  %16 = call i32 @PTR_ERR(%struct.carlu* %15)
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.carlu*, %struct.carlu** %1, align 8
  %19 = bitcast [8192 x i32]* %2 to i32**
  %20 = call i32 @carlu_cmd_mem_dump(%struct.carlu* %18, i32 0, i32 32768, i32** %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @INFO, align 4
  %26 = getelementptr inbounds [8192 x i32], [8192 x i32]* %2, i64 0, i64 0
  %27 = call i32 @print_hex_dump_bytes(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %26, i32 32768)
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.carlu*, %struct.carlu** %1, align 8
  %30 = call i32 @carlusb_close(%struct.carlu* %29)
  br label %31

31:                                               ; preds = %28, %14, %8
  %32 = call i32 (...) @carlu_exit()
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @carlu_init(...) #2

declare dso_local %struct.carlu* @carlusb_probe(...) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlu*) #2

declare dso_local i32 @PTR_ERR(%struct.carlu*) #2

declare dso_local i32 @carlu_cmd_mem_dump(%struct.carlu*, i32, i32, i32**) #2

declare dso_local i32 @print_hex_dump_bytes(i32, i8*, i32*, i32) #2

declare dso_local i32 @carlusb_close(%struct.carlu*) #2

declare dso_local i32 @carlu_exit(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
