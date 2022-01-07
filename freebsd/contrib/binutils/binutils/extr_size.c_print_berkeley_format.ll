; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_print_berkeley_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_size.c_print_berkeley_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_berkeley_format.files_seen = internal global i32 0, align 4
@bsssize = common dso_local global i64 0, align 8
@datasize = common dso_local global i64 0, align 8
@textsize = common dso_local global i64 0, align 8
@berkeley_sum = common dso_local global i32 0, align 4
@radix = common dso_local global i64 0, align 8
@octal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"   text\09   data\09    bss\09    oct\09    hex\09filename\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"   text\09   data\09    bss\09    dec\09    hex\09filename\00", align 1
@show_totals = common dso_local global i64 0, align 8
@total_textsize = common dso_local global i32 0, align 4
@total_datasize = common dso_local global i32 0, align 4
@total_bsssize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"\09%7lo\09%7lx\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09%7lu\09%7lx\09\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" (ex %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_berkeley_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_berkeley_format(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* @bsssize, align 8
  store i64 0, i64* @datasize, align 8
  store i64 0, i64* @textsize, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @berkeley_sum, align 4
  %6 = call i32 @bfd_map_over_sections(i32* %4, i32 %5, i32* null)
  %7 = load i32, i32* @print_berkeley_format.files_seen, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @print_berkeley_format.files_seen, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i64, i64* @radix, align 8
  %12 = load i64, i64* @octal, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0)
  %16 = call i32 @puts(i8* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i64, i64* @textsize, align 8
  %19 = load i64, i64* @datasize, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @bsssize, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* @show_totals, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load i64, i64* @textsize, align 8
  %27 = load i32, i32* @total_textsize, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @total_textsize, align 4
  %31 = load i64, i64* @datasize, align 8
  %32 = load i32, i32* @total_datasize, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @total_datasize, align 4
  %36 = load i64, i64* @bsssize, align 8
  %37 = load i32, i32* @total_bsssize, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @total_bsssize, align 4
  br label %41

41:                                               ; preds = %25, %17
  %42 = load i64, i64* @textsize, align 8
  %43 = call i32 @rprint_number(i32 7, i64 %42)
  %44 = call i32 @putchar(i8 signext 9)
  %45 = load i64, i64* @datasize, align 8
  %46 = call i32 @rprint_number(i32 7, i64 %45)
  %47 = call i32 @putchar(i8 signext 9)
  %48 = load i64, i64* @bsssize, align 8
  %49 = call i32 @rprint_number(i32 7, i64 %48)
  %50 = load i64, i64* @radix, align 8
  %51 = load i64, i64* @octal, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i32 (i8*, ...) @printf(i8* %54, i64 %55, i64 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i8* @bfd_get_filename(i32* %58)
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @fputs(i8* %59, i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32* @bfd_my_archive(i32* %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load i32*, i32** %2, align 8
  %67 = call i32* @bfd_my_archive(i32* %66)
  %68 = call i8* @bfd_get_filename(i32* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %65, %41
  ret void
}

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @rprint_number(i32, i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32* @bfd_my_archive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
