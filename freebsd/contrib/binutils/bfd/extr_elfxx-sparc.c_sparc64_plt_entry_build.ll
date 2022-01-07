; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc64_plt_entry_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc64_plt_entry_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@SPARC_NOP = common dso_local global i32 0, align 4
@PLT64_LARGE_THRESHOLD = common dso_local global i32 0, align 4
@PLT64_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, i32*)* @sparc64_plt_entry_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_plt_entry_build(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %11, align 8
  %33 = load i32, i32* @SPARC_NOP, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %36 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = or i32 50331648, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = ptrtoint i8* %54 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv i64 %59, 4
  %61 = and i64 %60, 524287
  %62 = or i64 812122112, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @bfd_put_32(i32* %64, i32 %65, i8* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = call i32 @bfd_put_32(i32* %68, i32 %69, i8* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = call i32 @bfd_put_32(i32* %73, i32 %74, i8* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  %82 = call i32 @bfd_put_32(i32* %78, i32 %79, i8* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 16
  %87 = call i32 @bfd_put_32(i32* %83, i32 %84, i8* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 20
  %92 = call i32 @bfd_put_32(i32* %88, i32 %89, i8* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 24
  %97 = call i32 @bfd_put_32(i32* %93, i32 %94, i8* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 28
  %102 = call i32 @bfd_put_32(i32* %98, i32 %99, i8* %101)
  br label %213

103:                                              ; preds = %5
  store i32 24, i32* %23, align 4
  store i32 8, i32* %24, align 4
  store i32 160, i32* %25, align 4
  store i32 5120, i32* %26, align 4
  %104 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %105 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %110 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sdiv i32 %114, 5120
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sdiv i32 %116, 5120
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %103
  store i32 160, i32* %22, align 4
  br label %127

122:                                              ; preds = %103
  %123 = load i32, i32* %9, align 4
  %124 = srem i32 %123, 5120
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %21, align 4
  %126 = sdiv i32 %125, 32
  store i32 %126, i32* %22, align 4
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i32, i32* %8, align 4
  %129 = srem i32 %128, 5120
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %131 = load i32, i32* %18, align 4
  %132 = mul nsw i32 %131, 160
  %133 = add nsw i32 %130, %132
  %134 = load i32, i32* %20, align 4
  %135 = sdiv i32 %134, 24
  %136 = add nsw i32 %133, %135
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @PLT64_LARGE_THRESHOLD, align 4
  %141 = load i32, i32* @PLT64_ENTRY_SIZE, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = load i32, i32* %18, align 4
  %146 = mul nsw i32 %145, 5120
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i32, i32* %22, align 4
  %150 = mul nsw i32 %149, 24
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i32, i32* %20, align 4
  %154 = sdiv i32 %153, 24
  %155 = mul nsw i32 %154, 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  store i8* %157, i8** %16, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %158 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  %170 = ptrtoint i8* %167 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = and i64 %172, 8191
  %174 = or i64 3260801024, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %17, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @bfd_put_32(i32* %176, i32 -1978662897, i8* %177)
  %179 = load i32*, i32** %6, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 4
  %182 = call i32 @bfd_put_32(i32* %179, i32 1073741826, i8* %181)
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* @SPARC_NOP, align 4
  %185 = load i8*, i8** %11, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 8
  %187 = call i32 @bfd_put_32(i32* %183, i32 %184, i8* %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 12
  %192 = call i32 @bfd_put_32(i32* %188, i32 %189, i8* %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 16
  %196 = call i32 @bfd_put_32(i32* %193, i32 -2084323327, i8* %195)
  %197 = load i32*, i32** %6, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 20
  %200 = call i32 @bfd_put_32(i32* %197, i32 -1643118587, i8* %199)
  %201 = load i32*, i32** %6, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 4
  %207 = ptrtoint i8* %204 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  %211 = load i8*, i8** %16, align 8
  %212 = call i32 @bfd_put_64(i32* %201, i32 %210, i8* %211)
  br label %213

213:                                              ; preds = %127, %39
  %214 = load i32, i32* %13, align 4
  %215 = sub nsw i32 %214, 4
  ret i32 %215
}

declare dso_local i32 @bfd_put_32(i32*, i32, i8*) #1

declare dso_local i32 @bfd_put_64(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
