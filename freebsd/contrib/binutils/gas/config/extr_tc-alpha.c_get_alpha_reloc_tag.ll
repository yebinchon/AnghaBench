; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_get_alpha_reloc_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_get_alpha_reloc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_reloc_tag = type { i64, i32, i32 }

@ALPHA_RELOC_DIGITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"!%ld\00", align 1
@alpha_literal_hash = common dso_local global i32 0, align 4
@now_seg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alpha_reloc_tag* (i64)* @get_alpha_reloc_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alpha_reloc_tag* @get_alpha_reloc_tag(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.alpha_reloc_tag*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @ALPHA_RELOC_DIGITS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @alpha_literal_hash, align 4
  %15 = call i64 @hash_find(i32 %14, i8* %11)
  %16 = inttoptr i64 %15 to %struct.alpha_reloc_tag*
  store %struct.alpha_reloc_tag* %16, %struct.alpha_reloc_tag** %5, align 8
  %17 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %18 = icmp ne %struct.alpha_reloc_tag* %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %1
  %20 = call i64 @strlen(i8* %11)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 16, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.alpha_reloc_tag* @xcalloc(i32 %23, i32 1)
  store %struct.alpha_reloc_tag* %24, %struct.alpha_reloc_tag** %5, align 8
  %25 = load i32, i32* @now_seg, align 4
  %26 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %27 = getelementptr inbounds %struct.alpha_reloc_tag, %struct.alpha_reloc_tag* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %2, align 8
  %29 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %30 = getelementptr inbounds %struct.alpha_reloc_tag, %struct.alpha_reloc_tag* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %32 = getelementptr inbounds %struct.alpha_reloc_tag, %struct.alpha_reloc_tag* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcpy(i32 %33, i8* %11)
  %35 = load i32, i32* @alpha_literal_hash, align 4
  %36 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %37 = getelementptr inbounds %struct.alpha_reloc_tag, %struct.alpha_reloc_tag* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %40 = bitcast %struct.alpha_reloc_tag* %39 to i8*
  %41 = call i8* @hash_insert(i32 %35, i32 %38, i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %19
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @as_fatal(i8* %45)
  br label %47

47:                                               ; preds = %44, %19
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.alpha_reloc_tag*, %struct.alpha_reloc_tag** %5, align 8
  %50 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %50)
  ret %struct.alpha_reloc_tag* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #2

declare dso_local i64 @hash_find(i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.alpha_reloc_tag* @xcalloc(i32, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i8* @hash_insert(i32, i32, i8*) #2

declare dso_local i32 @as_fatal(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
