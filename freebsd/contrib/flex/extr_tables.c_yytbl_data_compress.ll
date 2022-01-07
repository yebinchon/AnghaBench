; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_data_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_data_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"detected negative compression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yytbl_data_compress(%struct.yytbl_data* %0) #0 {
  %2 = alloca %struct.yytbl_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.yytbl_data, align 4
  %7 = alloca i32, align 4
  store %struct.yytbl_data* %0, %struct.yytbl_data** %2, align 8
  %8 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %9 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @yytbl_data_init(%struct.yytbl_data* %6, i32 %10)
  %12 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %13 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %17 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %21 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %25 = call i32 @min_int_size(%struct.yytbl_data* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %28 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @YYTDFLAGS2BYTES(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %81

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %37 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @YYTDFLAGS2BYTES(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = icmp sgt i32 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @flex_die(i32 %43)
  br label %81

45:                                               ; preds = %34
  %46 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %47 = call i32 @yytbl_calc_total_len(%struct.yytbl_data* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @calloc(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TFLAGS_CLRDATA(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @BYTES2TFLAG(i32 %55)
  %57 = or i32 %54, %56
  %58 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %6, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %70, %45
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @yytbl_data_geti(%struct.yytbl_data* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @yytbl_data_seti(%struct.yytbl_data* %6, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %75 = getelementptr inbounds %struct.yytbl_data, %struct.yytbl_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @free(i32 %76)
  %78 = load %struct.yytbl_data*, %struct.yytbl_data** %2, align 8
  %79 = bitcast %struct.yytbl_data* %78 to i8*
  %80 = bitcast %struct.yytbl_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 20, i1 false)
  br label %81

81:                                               ; preds = %73, %42, %33
  ret void
}

declare dso_local i32 @yytbl_data_init(%struct.yytbl_data*, i32) #1

declare dso_local i32 @min_int_size(%struct.yytbl_data*) #1

declare dso_local i64 @YYTDFLAGS2BYTES(i32) #1

declare dso_local i32 @flex_die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @yytbl_calc_total_len(%struct.yytbl_data*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @TFLAGS_CLRDATA(i32) #1

declare dso_local i32 @BYTES2TFLAG(i32) #1

declare dso_local i32 @yytbl_data_geti(%struct.yytbl_data*, i32) #1

declare dso_local i32 @yytbl_data_seti(%struct.yytbl_data*, i32, i32) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
