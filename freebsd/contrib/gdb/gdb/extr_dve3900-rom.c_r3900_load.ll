; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_r3900_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ethernet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to open file %s\0A\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"File is not an object file\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vconsi\0D\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Rm\0D\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@count_section = common dso_local global i64 0, align 8
@exec_bfd = common dso_local global i32* null, align 8
@load_section = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"vconsx\0D\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Start address 0x%lx\0A\00", align 1
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @r3900_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3900_load(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @ethernet, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @orig_monitor_load(i8* %14, i32 %15)
  br label %98

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %17
  %27 = call i8* @get_exec_file(i32 1)
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i8*, i8** %3, align 8
  %30 = call i32* @bfd_openr(i8* %29, i32 0)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @bfd_object, align 4
  %39 = call i64 @bfd_check_format(i32* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = call i32 @monitor_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 (...) @ignore_packet()
  %46 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %47 = call i32 @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 (...) @ignore_packet()
  %49 = call i32 @send_packet(i8 signext 97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @count_section, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32*, i32, ...) @bfd_map_over_sections(i32* %50, i32 %52, i32* %9)
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @write_long(i8* %54, i64 %56)
  %58 = load i32*, i32** @exec_bfd, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %62 = load i32*, i32** @exec_bfd, align 8
  %63 = call i64 @bfd_get_start_address(i32* %62)
  %64 = call i32 @write_long(i8* %61, i64 %63)
  br label %68

65:                                               ; preds = %43
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %67 = call i32 @write_long(i8* %66, i64 0)
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %70 = call i32 @process_read_request(i8* %69, i32 8)
  %71 = call i32 @time(i32* null)
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* @load_section, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32*, i32, ...) @bfd_map_over_sections(i32* %72, i32 %74, i32* %6)
  %76 = call i32 @time(i32* null)
  store i32 %76, i32* %8, align 4
  %77 = call i32 (...) @ignore_packet()
  %78 = call i32 @send_packet(i8 signext 97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %79 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %80 = call i32 @monitor_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %82 = load i32*, i32** %5, align 8
  %83 = call i64 @bfd_get_start_address(i32* %82)
  %84 = call i32 @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @report_transfer_performance(i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** @exec_bfd, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %68
  %92 = load i32*, i32** @exec_bfd, align 8
  %93 = call i64 @bfd_get_start_address(i32* %92)
  %94 = call i32 @write_pc(i64 %93)
  br label %95

95:                                               ; preds = %91, %68
  %96 = load i32, i32* @null_ptid, align 4
  store i32 %96, i32* @inferior_ptid, align 4
  %97 = call i32 (...) @clear_symtab_users()
  br label %98

98:                                               ; preds = %95, %13
  ret void
}

declare dso_local i32 @orig_monitor_load(i8*, i32) #1

declare dso_local i8* @get_exec_file(i32) #1

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @monitor_printf(i8*) #1

declare dso_local i32 @ignore_packet(...) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @send_packet(i8 signext, i8*, i32, i32) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, ...) #1

declare dso_local i32 @write_long(i8*, i64) #1

declare dso_local i64 @bfd_get_start_address(i32*) #1

declare dso_local i32 @process_read_request(i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @printf_filtered(i8*, i64) #1

declare dso_local i32 @report_transfer_performance(i32, i32, i32) #1

declare dso_local i32 @write_pc(i64) #1

declare dso_local i32 @clear_symtab_users(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
