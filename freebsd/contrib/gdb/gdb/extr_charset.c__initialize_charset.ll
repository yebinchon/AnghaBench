; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c__initialize_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c__initialize_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }
%struct.anon = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@ascii_print_literally = common dso_local global i32 0, align 4
@ascii_to_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"EBCDIC-US\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IBM1047\00", align 1
@ascii_to_iso_8859_1_table = common dso_local global i32 0, align 4
@ascii_to_ebcdic_us_table = common dso_local global i32 0, align 4
@ascii_to_ibm1047_table = common dso_local global i32 0, align 4
@iso_8859_1_to_ascii_table = common dso_local global i32 0, align 4
@iso_8859_1_to_ebcdic_us_table = common dso_local global i32 0, align 4
@iso_8859_1_to_ibm1047_table = common dso_local global i32 0, align 4
@ebcdic_us_to_ascii_table = common dso_local global i32 0, align 4
@ebcdic_us_to_iso_8859_1_table = common dso_local global i32 0, align 4
@ebcdic_us_to_ibm1047_table = common dso_local global i32 0, align 4
@ibm1047_to_ascii_table = common dso_local global i32 0, align 4
@ibm1047_to_iso_8859_1_table = common dso_local global i32 0, align 4
@ibm1047_to_ebcdic_us_table = common dso_local global i32 0, align 4
@host_charset_name = common dso_local global i32 0, align 4
@target_charset_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@class_support = common dso_local global i32 0, align 4
@host_charset_enum = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [362 x i8] c"Set the host and target character sets.\0AThe `host character set' is the one used by the system GDB is running on.\0AThe `target character set' is the one used by the program being debugged.\0AYou may only use supersets of ASCII for your host character set; GDB does\0Anot support any others.\0ATo see a list of the character sets GDB supports, type `set charset <TAB>'.\00", align 1
@setlist = common dso_local global i32 0, align 4
@set_charset_sfunc = common dso_local global i32 0, align 4
@show_charset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [363 x i8] c"Show the host and target character sets.\0AThe `host character set' is the one used by the system GDB is running on.\0AThe `target character set' is the one used by the program being debugged.\0AYou may only use supersets of ASCII for your host character set; GDB does\0Anot support any others.\0ATo see a list of the character sets GDB supports, type `set charset <TAB>'.\00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"host-charset\00", align 1
@.str.8 = private unnamed_addr constant [281 x i8] c"Set the host character set.\0AThe `host character set' is the one used by the system GDB is running on.\0AYou may only use supersets of ASCII for your host character set; GDB does\0Anot support any others.\0ATo see a list of the character sets GDB supports, type `set host-charset <TAB>'.\00", align 1
@set_host_charset_sfunc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"target-charset\00", align 1
@target_charset_enum = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [277 x i8] c"Set the target character set.\0AThe `target character set' is the one used by the program being debugged.\0AGDB translates characters and strings between the host and target\0Acharacter sets as needed.\0ATo see a list of the character sets GDB supports, type `set target-charset'<TAB>\00", align 1
@set_target_charset_sfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_charset() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = alloca [12 x %struct.anon], align 16
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ascii_print_literally, align 4
  %5 = load i32, i32* @ascii_to_control, align 4
  %6 = call i32 @simple_charset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1, i32 %4, i32 0, i32 %5, i32 0)
  %7 = call i32 @register_charset(i32 %6)
  %8 = call i32 @iso_8859_family_charset(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @register_charset(i32 %8)
  %10 = call i32 @ebcdic_family_charset(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @register_charset(i32 %10)
  %12 = call i32 @ebcdic_family_charset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @register_charset(i32 %12)
  %14 = call i32 (...) @register_iconv_charsets()
  %15 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* %2, i64 0, i64 0
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 2
  %19 = load i32, i32* @ascii_to_iso_8859_1_table, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %18, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 1
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 2
  %26 = load i32, i32* @ascii_to_ebcdic_us_table, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %22, i64 1
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2
  %33 = load i32, i32* @ascii_to_ibm1047_table, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %29, i64 1
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 2
  %40 = load i32, i32* @iso_8859_1_to_ascii_table, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %39, align 8
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 1
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %47 = load i32, i32* @iso_8859_1_to_ebcdic_us_table, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %46, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 1
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2
  %54 = load i32, i32* @iso_8859_1_to_ibm1047_table, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %53, align 8
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %50, i64 1
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 2
  %61 = load i32, i32* @ebcdic_us_to_ascii_table, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %60, align 8
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %57, i64 1
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 2
  %68 = load i32, i32* @ebcdic_us_to_iso_8859_1_table, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %67, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %64, i64 1
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 2
  %75 = load i32, i32* @ebcdic_us_to_ibm1047_table, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %74, align 8
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %71, i64 1
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 2
  %82 = load i32, i32* @ibm1047_to_ascii_table, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %81, align 8
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %78, i64 1
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 2
  %89 = load i32, i32* @ibm1047_to_iso_8859_1_table, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %88, align 8
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %85, i64 1
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %93, align 8
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 2
  %96 = load i32, i32* @ibm1047_to_ebcdic_us_table, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %95, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %121, %0
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 12
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* %2, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* %2, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* %2, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @simple_table_translation(i8* %108, i8* %113, i32* %118)
  %120 = call i32 @register_translation(i32 %119)
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %99

124:                                              ; preds = %99
  %125 = load i32, i32* @host_charset_name, align 4
  %126 = call i32 @set_host_charset(i32 %125)
  %127 = load i32, i32* @target_charset_name, align 4
  %128 = call i32 @set_target_charset(i32 %127)
  %129 = load i32, i32* @class_support, align 4
  %130 = load i32, i32* @host_charset_enum, align 4
  %131 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130, i32* @host_charset_name, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.5, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %131, %struct.cmd_list_element** %1, align 8
  %132 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %133 = load i32, i32* @set_charset_sfunc, align 4
  %134 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %132, i32 %133)
  %135 = load i32, i32* @class_support, align 4
  %136 = load i32, i32* @show_charset, align 4
  %137 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.6, i64 0, i64 0), i32* @showlist)
  %138 = load i32, i32* @class_support, align 4
  %139 = load i32, i32* @host_charset_enum, align 4
  %140 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %138, i32 %139, i32* @host_charset_name, i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.8, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %140, %struct.cmd_list_element** %1, align 8
  %141 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %142 = load i32, i32* @set_host_charset_sfunc, align 4
  %143 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %141, i32 %142)
  %144 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %145 = call i32 @add_show_from_set(%struct.cmd_list_element* %144, i32* @showlist)
  %146 = load i32, i32* @class_support, align 4
  %147 = load i32, i32* @target_charset_enum, align 4
  %148 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %147, i32* @target_charset_name, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.10, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %148, %struct.cmd_list_element** %1, align 8
  %149 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %150 = load i32, i32* @set_target_charset_sfunc, align 4
  %151 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %149, i32 %150)
  %152 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %153 = call i32 @add_show_from_set(%struct.cmd_list_element* %152, i32* @showlist)
  ret void
}

declare dso_local i32 @register_charset(i32) #1

declare dso_local i32 @simple_charset(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iso_8859_family_charset(i8*) #1

declare dso_local i32 @ebcdic_family_charset(i8*) #1

declare dso_local i32 @register_iconv_charsets(...) #1

declare dso_local i32 @register_translation(i32) #1

declare dso_local i32 @simple_table_translation(i8*, i8*, i32*) #1

declare dso_local i32 @set_host_charset(i32) #1

declare dso_local i32 @set_target_charset(i32) #1

declare dso_local %struct.cmd_list_element* @add_set_enum_cmd(i8*, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
