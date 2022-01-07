; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_set_buffers_bidi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_set_buffers_bidi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, %struct.TYPE_7__, i64, i8*, i32*, i64, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i32* }

@BR_IO_INOUT = common dso_local global i32 0, align 4
@BR_ERR_OK = common dso_local global i32 0, align 4
@BR_ERR_BAD_PARAM = common dso_local global i32 0, align 4
@MAX_OUT_OVERHEAD = common dso_local global i64 0, align 8
@MAX_IN_OVERHEAD = common dso_local global i64 0, align 8
@br_sslrec_out_clear_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_set_buffers_bidi(%struct.TYPE_8__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @BR_IO_INOUT, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 14
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 13
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @BR_ERR_OK, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* @BR_ERR_BAD_PARAM, align 4
  %39 = call i32 @br_ssl_engine_fail(%struct.TYPE_8__* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %107

41:                                               ; preds = %5
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  store i32* %43, i32** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  store i32 14, i32* %11, align 4
  br label %61

61:                                               ; preds = %81, %54
  %62 = load i32, i32* %11, align 4
  %63 = icmp uge i32 %62, 9
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @MAX_OUT_OVERHEAD, align 8
  %71 = add i64 %69, %70
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @MAX_IN_OVERHEAD, align 8
  %77 = add i64 %75, %76
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %84

80:                                               ; preds = %73, %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %61

84:                                               ; preds = %79, %61
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = load i32, i32* @BR_ERR_BAD_PARAM, align 4
  %90 = call i32 @br_ssl_engine_fail(%struct.TYPE_8__* %88, i32 %89)
  br label %115

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 13
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 12, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = shl i64 1, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %96, %40
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32* @br_sslrec_out_clear_vtable, i32** %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = call i32 @make_ready_in(%struct.TYPE_8__* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = call i32 @make_ready_out(%struct.TYPE_8__* %113)
  br label %115

115:                                              ; preds = %107, %87
  ret void
}

declare dso_local i32 @br_ssl_engine_fail(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @make_ready_in(%struct.TYPE_8__*) #1

declare dso_local i32 @make_ready_out(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
