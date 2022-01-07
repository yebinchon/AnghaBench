; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_start_unwind_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_start_unwind_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@special_section_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"_info\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Illegal section name `%s' (causes unwind section name clash)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.t.\00", align 1
@special_linkonce_name = common dso_local global i8** null, align 8
@SPECIAL_SECTION_UNWIND = common dso_local global i32 0, align 4
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@SHF_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Group section `%s' has no group signature\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c",\22aG\22,@progbits,\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",comdat\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@now_seg = common dso_local global %struct.TYPE_8__* null, align 8
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @start_unwind_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_unwind_section(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i8**, i8*** @special_section_name, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call i8* @segment_name(%struct.TYPE_8__* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @as_bad(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = call i32 (...) @ignore_rest_of_line()
  br label %152

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8**, i8*** @special_linkonce_name, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SPECIAL_SECTION_UNWIND, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 16
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %43, %38
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @strlen(i8* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  %63 = call i8* @alloca(i64 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i8* %64, i8* %65, i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i8* %71, i8* %72, i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SEC_LINK_ONCE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %53
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i32 @elf_section_flags(%struct.TYPE_8__* %86)
  %88 = load i32, i32* @SHF_GROUP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = call i8* @elf_group_name(%struct.TYPE_8__* %92)
  store i8* %93, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @as_bad(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  %99 = call i32 (...) @ignore_rest_of_line()
  br label %152

100:                                              ; preds = %91
  %101 = load i8*, i8** %16, align 8
  %102 = call i64 @strlen(i8* %101)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 16
  %105 = load i64, i64* %15, align 8
  %106 = add i64 %104, %105
  %107 = add i64 %106, 7
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = add i64 %108, 1
  %110 = call i8* @alloca(i64 %109)
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %12, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memcpy(i8* %111, i8* %112, i32 %114)
  %116 = load i8*, i8** %13, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = call i32 @memcpy(i8* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %120 = load i8*, i8** %13, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = getelementptr inbounds i8, i8* %122, i64 16
  %124 = load i8*, i8** %16, align 8
  %125 = load i64, i64* %15, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i8* %123, i8* %124, i32 %126)
  %128 = load i8*, i8** %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = getelementptr inbounds i8, i8* %130, i64 -7
  %132 = call i32 @memcpy(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %133 = load i8*, i8** %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 0, i8* %135, align 1
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @set_section(i8* %136)
  br label %150

138:                                              ; preds = %85, %53
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @set_section(i8* %139)
  %141 = load i32, i32* @stdoutput, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @now_seg, align 8
  %143 = ptrtoint %struct.TYPE_8__* %142 to i32
  %144 = load i32, i32* @SEC_LOAD, align 4
  %145 = load i32, i32* @SEC_ALLOC, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @SEC_READONLY, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @bfd_set_section_flags(i32 %141, i32 %143, i32 %148)
  br label %150

150:                                              ; preds = %138, %100
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %17, align 8
  br label %152

152:                                              ; preds = %150, %96, %29
  ret void
}

declare dso_local i8* @segment_name(%struct.TYPE_8__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @as_bad(i8*, i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @elf_section_flags(%struct.TYPE_8__*) #1

declare dso_local i8* @elf_group_name(%struct.TYPE_8__*) #1

declare dso_local i32 @set_section(i8*) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
