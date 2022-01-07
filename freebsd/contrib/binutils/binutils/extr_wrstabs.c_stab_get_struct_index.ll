; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_get_struct_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_get_struct_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.stab_tag* }
%struct.stab_tag = type { i64, i8*, i32, i32 }

@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stab_write_handle*, i8*, i32, i32, i32*)* @stab_get_struct_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_get_struct_index(%struct.stab_write_handle* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.stab_write_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %14 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %12, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %5
  %19 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %20 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i64 10, i64* %11, align 8
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %11, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = mul i64 %34, 2
  store i64 %35, i64* %11, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %38 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.stab_tag*, %struct.stab_tag** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = mul i64 %41, 24
  %43 = call i64 @xrealloc(%struct.stab_tag* %40, i64 %42)
  %44 = inttoptr i64 %43 to %struct.stab_tag*
  %45 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %46 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.stab_tag* %44, %struct.stab_tag** %47, align 8
  %48 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %49 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.stab_tag*, %struct.stab_tag** %50, align 8
  %52 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %53 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %51, i64 %56
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %60 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = sub i64 %58, %63
  %65 = mul i64 %64, 24
  %66 = call i32 @memset(%struct.stab_tag* %57, i32 0, i64 %65)
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %70 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %36, %5
  %73 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %74 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.stab_tag*, %struct.stab_tag** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %76, i64 %78
  %80 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %72
  %84 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %85 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %88 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.stab_tag*, %struct.stab_tag** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %90, i64 %92
  %94 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %93, i32 0, i32 0
  store i64 %86, i64* %94, align 8
  %95 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %96 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %101 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load %struct.stab_tag*, %struct.stab_tag** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %103, i64 %105
  %107 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %106, i32 0, i32 1
  store i8* %99, i8** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %110 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load %struct.stab_tag*, %struct.stab_tag** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %112, i64 %114
  %116 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %115, i32 0, i32 2
  store i32 %108, i32* %116, align 8
  br label %117

117:                                              ; preds = %83, %72
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %124 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load %struct.stab_tag*, %struct.stab_tag** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %126, i64 %128
  %130 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %129, i32 0, i32 2
  store i32 %122, i32* %130, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %134 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load %struct.stab_tag*, %struct.stab_tag** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %136, i64 %138
  %140 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %139, i32 0, i32 3
  store i32 %132, i32* %140, align 4
  br label %152

141:                                              ; preds = %117
  %142 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %143 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load %struct.stab_tag*, %struct.stab_tag** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %145, i64 %147
  %149 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %141, %121
  %153 = load %struct.stab_write_handle*, %struct.stab_write_handle** %6, align 8
  %154 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load %struct.stab_tag*, %struct.stab_tag** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %156, i64 %158
  %160 = getelementptr inbounds %struct.stab_tag, %struct.stab_tag* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  ret i64 %161
}

declare dso_local i64 @xrealloc(%struct.stab_tag*, i64) #1

declare dso_local i32 @memset(%struct.stab_tag*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
