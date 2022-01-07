; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_obj_symbol_new_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_obj_symbol_new_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@OBJ_COFF_MAX_AUXENTRIES = common dso_local global i32 0, align 4
@T_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_obj_symbol_new_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @OBJ_COFF_MAX_AUXENTRIES, align 4
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i8* @xmalloc(i64 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @memset(i8* %11, i32 0, i64 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @symbol_get_bfdsym(i32* %16)
  %18 = call %struct.TYPE_2__* @coffsymbol(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %15, i32** %19, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @T_NULL, align 4
  %22 = call i32 @S_SET_DATA_TYPE(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @S_SET_STORAGE_CLASS(i32* %23, i32 0)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @S_SET_NUMBER_AUXILIARY(i32* %25, i32 0)
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @S_IS_STRING(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @SF_SET_STRING(i32* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32*, i32** %2, align 8
  %35 = call i64 @S_IS_LOCAL(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @SF_SET_LOCAL(i32* %38)
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_2__* @coffsymbol(i32) #1

declare dso_local i32 @symbol_get_bfdsym(i32*) #1

declare dso_local i32 @S_SET_DATA_TYPE(i32*, i32) #1

declare dso_local i32 @S_SET_STORAGE_CLASS(i32*, i32) #1

declare dso_local i32 @S_SET_NUMBER_AUXILIARY(i32*, i32) #1

declare dso_local i64 @S_IS_STRING(i32*) #1

declare dso_local i32 @SF_SET_STRING(i32*) #1

declare dso_local i64 @S_IS_LOCAL(i32*) #1

declare dso_local i32 @SF_SET_LOCAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
