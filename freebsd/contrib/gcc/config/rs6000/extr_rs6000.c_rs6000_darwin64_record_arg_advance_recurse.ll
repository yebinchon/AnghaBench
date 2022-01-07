; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_advance_recurse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_advance_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FIELD_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32)* @rs6000_darwin64_record_arg_advance_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_darwin64_record_arg_advance_recurse(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @TYPE_FIELDS(i64 %11)
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %114, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %117

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @FIELD_DECL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @error_mark_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %114

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @TYPE_MODE(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @DECL_SIZE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @bit_position(i64 %36)
  %38 = call i64 @host_integerp(i32 %37, i32 1)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @int_bit_position(i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %35, %29
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @RECORD_TYPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %8, align 4
  call void @rs6000_darwin64_record_arg_advance_recurse(%struct.TYPE_6__* %53, i64 %54, i32 %55)
  br label %112

56:                                               ; preds = %47
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @USE_FP_FOR_ARG_P(%struct.TYPE_6__* %57, i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @rs6000_darwin64_record_arg_advance_flush(%struct.TYPE_6__* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @GET_MODE_SIZE(i32 %66)
  %68 = add nsw i32 %67, 7
  %69 = ashr i32 %68, 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @GET_MODE_SIZE(i32 %74)
  %76 = add nsw i32 %75, 7
  %77 = ashr i32 %76, 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %111

82:                                               ; preds = %56
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_6__* %83, i32 %84, i64 %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @rs6000_darwin64_record_arg_advance_flush(%struct.TYPE_6__* %89, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %97, align 4
  br label %110

100:                                              ; preds = %82
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %62
  br label %112

112:                                              ; preds = %111, %52
  br label %113

113:                                              ; preds = %112, %16
  br label %114

114:                                              ; preds = %113, %28
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @TREE_CHAIN(i64 %115)
  store i64 %116, i64* %7, align 8
  br label %13

117:                                              ; preds = %13
  ret void
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @bit_position(i64) #1

declare dso_local i64 @int_bit_position(i64) #1

declare dso_local i64 @USE_FP_FOR_ARG_P(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @rs6000_darwin64_record_arg_advance_flush(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
