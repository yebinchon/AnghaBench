; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i32* }

@link_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@entry_symbol = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@entry_symbol_default = common dso_local global i32* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@output_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%P%F:%s: can't set start address\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%P%F: can't set start address\0A\00", align 1
@entry_section = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"%P: warning: cannot find entry symbol %s; defaulting to %V\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"%P: warning: cannot find entry symbol %s; not setting start address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lang_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_end() #0 {
  %1 = alloca %struct.bfd_link_hash_entry*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 1), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %0
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %2, align 8
  br label %16

14:                                               ; preds = %9
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @entry_symbol_default, align 8
  store i32* %20, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 0), align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = load i64, i64* @TRUE, align 8
  %28 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %23, i32* %24, i64 %25, i64 %26, i64 %27)
  store %struct.bfd_link_hash_entry* %28, %struct.bfd_link_hash_entry** %1, align 8
  %29 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %30 = icmp ne %struct.bfd_link_hash_entry* %29, null
  br i1 %30, label %31, label %85

31:                                               ; preds = %22
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %33 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @bfd_link_hash_defined, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %39 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @bfd_link_hash_defweak, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %37, %31
  %44 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %45 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %43
  %53 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %54 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @output_bfd, align 4
  %59 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %60 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @bfd_get_section_vma(i32 %58, i32* %65)
  %67 = add nsw i64 %57, %66
  %68 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %1, align 8
  %69 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %67, %74
  store i64 %75, i64* %3, align 8
  %76 = load i32, i32* @output_bfd, align 4
  %77 = load i64, i64* %3, align 8
  %78 = call i32 @bfd_set_start_address(i32 %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %52
  %81 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %83 = call i32 (i32, ...) @einfo(i32 %81, i32* %82)
  br label %84

84:                                               ; preds = %80, %52
  br label %138

85:                                               ; preds = %43, %37, %22
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %87 = call i64 @bfd_scan_vma(i32* %86, i8** %5, i32 0)
  store i64 %87, i64* %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* @output_bfd, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @bfd_set_start_address(i32 %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 (i32, ...) @einfo(i32 %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %137

101:                                              ; preds = %85
  %102 = load i32, i32* @output_bfd, align 4
  %103 = load i32, i32* @entry_section, align 4
  %104 = call i32* @bfd_get_section_by_name(i32 %102, i32 %103)
  store i32* %104, i32** %6, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load i64, i64* %2, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %113 = load i32, i32* @output_bfd, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i64 @bfd_get_section_vma(i32 %113, i32* %114)
  %116 = call i32 (i32, ...) @einfo(i32 %111, i32* %112, i64 %115)
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i32, i32* @output_bfd, align 4
  %119 = load i32, i32* @output_bfd, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = call i64 @bfd_get_section_vma(i32 %119, i32* %120)
  %122 = call i32 @bfd_set_start_address(i32 %118, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %126 = call i32 (i32, ...) @einfo(i32 %125)
  br label %127

127:                                              ; preds = %124, %117
  br label %136

128:                                              ; preds = %101
  %129 = load i64, i64* %2, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @entry_symbol, i32 0, i32 0), align 8
  %134 = call i32 (i32, ...) @einfo(i32 %132, i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %127
  br label %137

137:                                              ; preds = %136, %100
  br label %138

138:                                              ; preds = %137, %84
  ret void
}

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i32*, i64, i64, i64) #1

declare dso_local i64 @bfd_get_section_vma(i32, i32*) #1

declare dso_local i32 @bfd_set_start_address(i32, i64) #1

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @bfd_scan_vma(i32*, i8**, i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
