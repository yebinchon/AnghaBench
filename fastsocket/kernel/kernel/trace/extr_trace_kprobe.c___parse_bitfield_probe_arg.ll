; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c___parse_bitfield_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c___parse_bitfield_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32, i32* }
%struct.fetch_param = type { i8*, i32 }
%struct.bitfield_fetch_param = type { i64, i64, %struct.fetch_param }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FETCH_MTD_bitfield = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_param*)* @__parse_bitfield_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_bitfield_probe_arg(i8* %0, %struct.fetch_type* %1, %struct.fetch_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fetch_type*, align 8
  %7 = alloca %struct.fetch_param*, align 8
  %8 = alloca %struct.bitfield_fetch_param*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %6, align 8
  store %struct.fetch_param* %2, %struct.fetch_param** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 98
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bitfield_fetch_param* @kzalloc(i32 32, i32 %18)
  store %struct.bitfield_fetch_param* %19, %struct.bitfield_fetch_param** %8, align 8
  %20 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %21 = icmp ne %struct.bitfield_fetch_param* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %17
  %26 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %27 = getelementptr inbounds %struct.bitfield_fetch_param, %struct.bitfield_fetch_param* %26, i32 0, i32 2
  %28 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %29 = bitcast %struct.fetch_param* %27 to i8*
  %30 = bitcast %struct.fetch_param* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %32 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @FETCH_MTD_bitfield, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %38 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %40 = bitcast %struct.bitfield_fetch_param* %39 to i8*
  %41 = load %struct.fetch_param*, %struct.fetch_param** %7, align 8
  %42 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i64 @simple_strtoul(i8* %44, i8** %11, i32 0)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %25
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 64
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %25
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %104

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @simple_strtoul(i8* %59, i8** %11, i32 0)
  store i64 %60, i64* %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %56
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %104

72:                                               ; preds = %64
  %73 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %74 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @BYTES_TO_BITS(i32 %75)
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %77, %78
  %80 = sub i64 %76, %79
  %81 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %82 = getelementptr inbounds %struct.bitfield_fetch_param, %struct.bitfield_fetch_param* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %84 = getelementptr inbounds %struct.bitfield_fetch_param, %struct.bitfield_fetch_param* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %85, %86
  %88 = load %struct.bitfield_fetch_param*, %struct.bitfield_fetch_param** %8, align 8
  %89 = getelementptr inbounds %struct.bitfield_fetch_param, %struct.bitfield_fetch_param* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %91 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @BYTES_TO_BITS(i32 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %94, %95
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %72
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  br label %102

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %69, %53, %22, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.bitfield_fetch_param* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @BYTES_TO_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
