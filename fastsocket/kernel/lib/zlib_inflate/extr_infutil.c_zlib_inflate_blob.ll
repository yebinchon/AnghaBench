; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_infutil.c_zlib_inflate_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_infutil.c_zlib_inflate_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_stream_s = type { i32, i32, %struct.z_stream_s*, i8*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_inflate_blob(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.z_stream_s*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 32, i32 %16)
  %18 = bitcast i8* %17 to %struct.z_stream_s*
  store %struct.z_stream_s* %18, %struct.z_stream_s** %10, align 8
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %20 = icmp eq %struct.z_stream_s* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %84

22:                                               ; preds = %4
  %23 = call i32 (...) @zlib_inflate_workspacesize()
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.z_stream_s*
  %27 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %28 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %27, i32 0, i32 2
  store %struct.z_stream_s* %26, %struct.z_stream_s** %28, align 8
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %29, i32 0, i32 2
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %30, align 8
  %32 = icmp eq %struct.z_stream_s* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %81

34:                                               ; preds = %22
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %48 = load i32, i32* @MAX_WBITS, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @zlib_inflateInit2(%struct.z_stream_s* %47, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @Z_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %34
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %56 = load i32, i32* @Z_FINISH, align 4
  %57 = call i32 @zlib_inflate(%struct.z_stream_s* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @Z_STREAM_END, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  store i32 %66, i32* %11, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %72 = call i32 @zlib_inflateEnd(%struct.z_stream_s* %71)
  br label %76

73:                                               ; preds = %34
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %78 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %77, i32 0, i32 2
  %79 = load %struct.z_stream_s*, %struct.z_stream_s** %78, align 8
  %80 = call i32 @kfree(%struct.z_stream_s* %79)
  br label %81

81:                                               ; preds = %76, %33
  %82 = load %struct.z_stream_s*, %struct.z_stream_s** %10, align 8
  %83 = call i32 @kfree(%struct.z_stream_s* %82)
  br label %84

84:                                               ; preds = %81, %21
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @zlib_inflateInit2(%struct.z_stream_s*, i32) #1

declare dso_local i32 @zlib_inflate(%struct.z_stream_s*, i32) #1

declare dso_local i32 @zlib_inflateEnd(%struct.z_stream_s*) #1

declare dso_local i32 @kfree(%struct.z_stream_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
