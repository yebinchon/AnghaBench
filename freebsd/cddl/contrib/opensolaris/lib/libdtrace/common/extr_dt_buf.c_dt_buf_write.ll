; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_buf.c_dt_buf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_buf.c_dt_buf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_buf_write(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %18, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @roundup(i64 %24, i64 %25)
  %27 = load i64, i64* %11, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dt_set_errno(i32* %34, i64 %37)
  br label %145

39:                                               ; preds = %5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %46, %54
  br i1 %55, label %56, label %127

56:                                               ; preds = %39
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %13, align 8
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %77, %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %73, %74
  %76 = icmp ugt i64 %69, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load i64, i64* %13, align 8
  %79 = mul i64 %78, 2
  store i64 %79, i64* %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i8* @dt_zalloc(i32* %83, i64 %84)
  store i8* %85, i8** %14, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @dtrace_errno(i32* %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %145

92:                                               ; preds = %82
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8*, i8** %14, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @bcopy(i8* %97, i8* %98, i64 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @dt_free(i32* %101, i8* %106)
  %108 = load i8*, i8** %14, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %13, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %92, %39
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @bcopy(i8* %133, i8* %137, i64 %138)
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %127, %87, %33
  ret void
}

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @dt_set_errno(i32*, i64) #1

declare dso_local i8* @dt_zalloc(i32*, i64) #1

declare dso_local i64 @dtrace_errno(i32*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @dt_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
