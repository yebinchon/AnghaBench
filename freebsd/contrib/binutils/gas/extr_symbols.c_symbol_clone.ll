; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.local_symbol = type { i32 }

@notes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bfd_make_empty_symbol: %s\00", align 1
@symbol_rootP = common dso_local global %struct.TYPE_21__* null, align 8
@symbol_lastP = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @symbol_clone(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_21__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = bitcast %struct.TYPE_21__* %12 to %struct.local_symbol*
  %14 = call %struct.TYPE_21__* @local_symbol_convert(%struct.local_symbol* %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %3, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %6, align 8
  %19 = call %struct.TYPE_21__* @obstack_alloc(i32* @notes, i32 24)
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %5, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = bitcast %struct.TYPE_21__* %20 to i8*
  %23 = bitcast %struct.TYPE_21__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = call i32 @bfd_asymbol_bfd(%struct.TYPE_22__* %24)
  %26 = call %struct.TYPE_22__* @bfd_make_empty_symbol(i32 %25)
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %7, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = icmp eq %struct.TYPE_22__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = call i32 (...) @bfd_get_error()
  %31 = call i32 @bfd_errmsg(i32 %30)
  %32 = call i32 @as_fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %15
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = call i32 @bfd_asymbol_bfd(%struct.TYPE_22__* %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = call i32 @bfd_asymbol_bfd(%struct.TYPE_22__* %55)
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = call i32 @bfd_copy_private_symbol_data(i32 %53, %struct.TYPE_22__* %54, i32 %56, %struct.TYPE_22__* %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %33
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** @symbol_rootP, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = icmp eq %struct.TYPE_21__* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %66, %struct.TYPE_21__** @symbol_rootP, align 8
  br label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = icmp ne %struct.TYPE_21__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %79, align 8
  br label %80

80:                                               ; preds = %72, %67
  br label %81

81:                                               ; preds = %80, %65
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** @symbol_lastP, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = icmp eq %struct.TYPE_21__* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** @symbol_lastP, align 8
  br label %99

87:                                               ; preds = %81
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = icmp ne %struct.TYPE_21__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %97, align 8
  br label %98

98:                                               ; preds = %92, %87
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** @symbol_rootP, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** @symbol_lastP, align 8
  %107 = call i32 @debug_verify_symchain(%struct.TYPE_21__* %105, %struct.TYPE_21__* %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = call i32 @symbol_table_insert(%struct.TYPE_21__* %108)
  br label %116

110:                                              ; preds = %33
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %115, align 8
  br label %116

116:                                              ; preds = %110, %99
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %117
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @local_symbol_convert(%struct.local_symbol*) #1

declare dso_local %struct.TYPE_21__* @obstack_alloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_22__* @bfd_make_empty_symbol(i32) #1

declare dso_local i32 @bfd_asymbol_bfd(%struct.TYPE_22__*) #1

declare dso_local i32 @as_fatal(i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_copy_private_symbol_data(i32, %struct.TYPE_22__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @debug_verify_symchain(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @symbol_table_insert(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
