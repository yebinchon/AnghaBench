; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_ciGetLeafPrefixKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_ciGetLeafPrefixKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i64, i64* }

@JFS_NAME_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, %struct.component_name*, i32)* @ciGetLeafPrefixKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciGetLeafPrefixKey(i32* %0, i32 %1, i32* %2, i32 %3, %struct.component_name* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.component_name*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.component_name, align 8
  %20 = alloca %struct.component_name, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.component_name* %4, %struct.component_name** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @JFS_NAME_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to i64*
  %29 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  store i64* %28, i64** %29, align 8
  %30 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %160

36:                                               ; preds = %6
  %37 = load i32, i32* @JFS_NAME_MAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  %44 = bitcast i8* %43 to i64*
  %45 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  store i64* %44, i64** %45, align 8
  %46 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @kfree(i64* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %160

55:                                               ; preds = %36
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @dtGetKey(i32* %56, i32 %57, %struct.component_name* %19, i32 %58)
  %60 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @JFS_OS2, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @JFS_OS2, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = call i32 @ciToUpper(%struct.component_name* %19)
  br label %72

72:                                               ; preds = %70, %55
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dtGetKey(i32* %73, i32 %74, %struct.component_name* %20, i32 %75)
  %77 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @JFS_OS2, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @JFS_OS2, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = call i32 @ciToUpper(%struct.component_name* %20)
  br label %89

89:                                               ; preds = %87, %72
  store i32 0, i32* %14, align 4
  %90 = load %struct.component_name*, %struct.component_name** %12, align 8
  %91 = getelementptr inbounds %struct.component_name, %struct.component_name* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  store i64* %92, i64** %18, align 8
  %93 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @min(i64 %94, i64 %96)
  store i32 %97, i32* %15, align 4
  %98 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  store i64* %99, i64** %16, align 8
  %100 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  store i64* %101, i64** %17, align 8
  br label %102

102:                                              ; preds = %121, %89
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = load i64*, i64** %17, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %18, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i64*, i64** %16, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %17, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = load %struct.component_name*, %struct.component_name** %12, align 8
  %119 = getelementptr inbounds %struct.component_name, %struct.component_name* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %153

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120
  %122 = load i64*, i64** %16, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %16, align 8
  %124 = load i64*, i64** %17, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %17, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load i64*, i64** %18, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %18, align 8
  br label %102

132:                                              ; preds = %102
  %133 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %134, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i64*, i64** %17, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %18, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = load %struct.component_name*, %struct.component_name** %12, align 8
  %146 = getelementptr inbounds %struct.component_name, %struct.component_name* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %152

147:                                              ; preds = %132
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.component_name*, %struct.component_name** %12, align 8
  %151 = getelementptr inbounds %struct.component_name, %struct.component_name* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %138
  br label %153

153:                                              ; preds = %152, %114
  %154 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = call i32 @kfree(i64* %155)
  %157 = getelementptr inbounds %struct.component_name, %struct.component_name* %20, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @kfree(i64* %158)
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %153, %49, %33
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dtGetKey(i32*, i32, %struct.component_name*, i32) #1

declare dso_local i32 @ciToUpper(%struct.component_name*) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
