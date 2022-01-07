; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_import_fixup_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_import_fixup_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.bfd_symbol** }
%struct.bfd_symbol = type { i8* }
%struct.bfd_link_hash_entry = type { i32 }

@make_import_fixup_mark.counter = internal global i32 0, align 4
@make_import_fixup_mark.fixup_name = internal global i8* null, align 8
@make_import_fixup_mark.buffer_len = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"__fu%d_%s\00", align 1
@link_info = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@current_sec = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @make_import_fixup_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_import_fixup_mark(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.bfd_symbol*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.bfd_symbol**, %struct.bfd_symbol*** %7, align 8
  %9 = load %struct.bfd_symbol*, %struct.bfd_symbol** %8, align 8
  store %struct.bfd_symbol* %9, %struct.bfd_symbol** %3, align 8
  %10 = load %struct.bfd_symbol*, %struct.bfd_symbol** %3, align 8
  %11 = call i32* @bfd_asymbol_bfd(%struct.bfd_symbol* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i8*, i8** @make_import_fixup_mark.fixup_name, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i8* @xmalloc(i64 384)
  store i8* %15, i8** @make_import_fixup_mark.fixup_name, align 8
  store i64 384, i64* @make_import_fixup_mark.buffer_len, align 8
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.bfd_symbol*, %struct.bfd_symbol** %3, align 8
  %18 = getelementptr inbounds %struct.bfd_symbol, %struct.bfd_symbol* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 25
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @make_import_fixup_mark.buffer_len, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load i8*, i8** @make_import_fixup_mark.fixup_name, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.bfd_symbol*, %struct.bfd_symbol** %3, align 8
  %29 = getelementptr inbounds %struct.bfd_symbol, %struct.bfd_symbol* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 25
  %33 = add nsw i32 %32, 127
  %34 = and i32 %33, -128
  %35 = sext i32 %34 to i64
  store i64 %35, i64* @make_import_fixup_mark.buffer_len, align 8
  %36 = load i64, i64* @make_import_fixup_mark.buffer_len, align 8
  %37 = call i8* @xmalloc(i64 %36)
  store i8* %37, i8** @make_import_fixup_mark.fixup_name, align 8
  br label %38

38:                                               ; preds = %25, %16
  %39 = load i8*, i8** @make_import_fixup_mark.fixup_name, align 8
  %40 = load i32, i32* @make_import_fixup_mark.counter, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @make_import_fixup_mark.counter, align 4
  %42 = load %struct.bfd_symbol*, %struct.bfd_symbol** %3, align 8
  %43 = getelementptr inbounds %struct.bfd_symbol, %struct.bfd_symbol* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %44)
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** @make_import_fixup_mark.fixup_name, align 8
  %48 = load i32, i32* @BSF_GLOBAL, align 4
  %49 = load i32, i32* @current_sec, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @bfd_coff_link_add_one_symbol(i32* @link_info, i32* %46, i8* %47, i32 %48, i32 %49, i32 %52, i32* null, i32 %53, i32 %54, %struct.bfd_link_hash_entry** %5)
  %56 = load i8*, i8** @make_import_fixup_mark.fixup_name, align 8
  ret i8* %56
}

declare dso_local i32* @bfd_asymbol_bfd(%struct.bfd_symbol*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @bfd_coff_link_add_one_symbol(i32*, i32*, i8*, i32, i32, i32, i32*, i32, i32, %struct.bfd_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
