; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_free_reg_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_free_reg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_info_data = type { %struct.reg_info_data* }

@reg_n_info = common dso_local global i64 0, align 8
@reg_info_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@reg_info_head = common dso_local global %struct.reg_info_data* null, align 8
@reg_pref_buffer = common dso_local global i8* null, align 8
@renumber = common dso_local global i16* null, align 8
@regno_allocated = common dso_local global i64 0, align 8
@reg_n_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_reg_info() #0 {
  %1 = alloca %struct.reg_info_data*, align 8
  %2 = alloca %struct.reg_info_data*, align 8
  %3 = load i64, i64* @reg_n_info, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %0
  %6 = load i32, i32* @reg_info_p, align 4
  %7 = load i32, i32* @heap, align 4
  %8 = load i64, i64* @reg_n_info, align 8
  %9 = call i32 @VEC_free(i32 %6, i32 %7, i64 %8)
  %10 = load %struct.reg_info_data*, %struct.reg_info_data** @reg_info_head, align 8
  store %struct.reg_info_data* %10, %struct.reg_info_data** %1, align 8
  br label %11

11:                                               ; preds = %21, %5
  %12 = load %struct.reg_info_data*, %struct.reg_info_data** %1, align 8
  %13 = icmp ne %struct.reg_info_data* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.reg_info_data*, %struct.reg_info_data** %1, align 8
  %16 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %15, i32 0, i32 0
  %17 = load %struct.reg_info_data*, %struct.reg_info_data** %16, align 8
  store %struct.reg_info_data* %17, %struct.reg_info_data** %2, align 8
  %18 = load %struct.reg_info_data*, %struct.reg_info_data** %1, align 8
  %19 = bitcast %struct.reg_info_data* %18 to i8*
  %20 = call i32 @free(i8* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load %struct.reg_info_data*, %struct.reg_info_data** %2, align 8
  store %struct.reg_info_data* %22, %struct.reg_info_data** %1, align 8
  br label %11

23:                                               ; preds = %11
  %24 = load i8*, i8** @reg_pref_buffer, align 8
  %25 = call i32 @free(i8* %24)
  store i8* null, i8** @reg_pref_buffer, align 8
  store %struct.reg_info_data* null, %struct.reg_info_data** @reg_info_head, align 8
  store i16* null, i16** @renumber, align 8
  br label %26

26:                                               ; preds = %23, %0
  store i64 0, i64* @regno_allocated, align 8
  store i64 0, i64* @reg_n_max, align 8
  ret void
}

declare dso_local i32 @VEC_free(i32, i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
