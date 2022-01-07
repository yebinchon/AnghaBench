; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dump_ia64_unwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dump_ia64_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_unw_aux_info = type { i32, i8*, i32, i64, i32, i32, i32, i32, %struct.ia64_unw_table_entry* }
%struct.ia64_unw_table_entry = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0A<\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"+%lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c">: [\00", align 1
@PREFIX_HEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"], info at +0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"  v%u, flags=0x%lx (%s%s), len=%lu bytes\0A\00", align 1
@UNW_FLAG_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" ehandler\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" uhandler\00", align 1
@eh_addr_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"\09Unknown version.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia64_unw_aux_info*)* @dump_ia64_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ia64_unwind(%struct.ia64_unw_aux_info* %0) #0 {
  %2 = alloca %struct.ia64_unw_aux_info*, align 8
  %3 = alloca %struct.ia64_unw_table_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ia64_unw_aux_info* %0, %struct.ia64_unw_aux_info** %2, align 8
  %10 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %11 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %10, i32 0, i32 8
  %12 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %11, align 8
  store %struct.ia64_unw_table_entry* %12, %struct.ia64_unw_table_entry** %3, align 8
  br label %13

13:                                               ; preds = %146, %1
  %14 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %15 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %16 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %15, i32 0, i32 8
  %17 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %16, align 8
  %18 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %19 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %17, i64 %21
  %23 = icmp ult %struct.ia64_unw_table_entry* %14, %22
  br i1 %23, label %24, label %149

24:                                               ; preds = %13
  %25 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %26 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %29 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %32 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %35 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %38 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @find_symbol_for_address(i32 %27, i32 %30, i32 %33, i32 %36, i32 %40, i8** %9, i32* %6)
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %24
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fputs(i8* %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %61 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PREFIX_HEX, align 4
  %65 = call i32 @print_vma(i32 %63, i32 %64)
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fputc(i8 signext 45, i32 %66)
  %68 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %69 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PREFIX_HEX, align 4
  %73 = call i32 @print_vma(i32 %71, i32 %72)
  %74 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %75 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %79 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %84 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %87 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ABSADDR(i64 %89)
  %91 = load %struct.ia64_unw_aux_info*, %struct.ia64_unw_aux_info** %2, align 8
  %92 = getelementptr inbounds %struct.ia64_unw_aux_info, %struct.ia64_unw_aux_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %85, i64 %95
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @byte_get(i8* %97, i32 4)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @UNW_VER(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @UNW_FLAG_MASK, align 4
  %103 = and i32 %101, %102
  %104 = ashr i32 %103, 32
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @UNW_FLAG_EHANDLER(i32 %106)
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %111 = load i32, i32* %5, align 4
  %112 = call i64 @UNW_FLAG_UHANDLER(i32 %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %116 = load i32, i32* @eh_addr_size, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @UNW_LENGTH(i32 %117)
  %119 = mul nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %100, i64 %105, i8* %110, i8* %115, i64 %120)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @UNW_VER(i32 %122)
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %57
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %146

127:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  store i8* %129, i8** %7, align 8
  br label %130

130:                                              ; preds = %141, %127
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = load i32, i32* @eh_addr_size, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @UNW_LENGTH(i32 %135)
  %137 = mul nsw i32 %134, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  %140 = icmp ult i8* %131, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i8* @unw_decode(i8* %142, i32 %143, i32* %4)
  store i8* %144, i8** %7, align 8
  br label %130

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %125
  %147 = load %struct.ia64_unw_table_entry*, %struct.ia64_unw_table_entry** %3, align 8
  %148 = getelementptr inbounds %struct.ia64_unw_table_entry, %struct.ia64_unw_table_entry* %147, i32 1
  store %struct.ia64_unw_table_entry* %148, %struct.ia64_unw_table_entry** %3, align 8
  br label %13

149:                                              ; preds = %13
  ret void
}

declare dso_local i32 @find_symbol_for_address(i32, i32, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_vma(i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @ABSADDR(i64) #1

declare dso_local i32 @byte_get(i8*, i32) #1

declare dso_local i32 @UNW_VER(i32) #1

declare dso_local i64 @UNW_FLAG_EHANDLER(i32) #1

declare dso_local i64 @UNW_FLAG_UHANDLER(i32) #1

declare dso_local i32 @UNW_LENGTH(i32) #1

declare dso_local i8* @unw_decode(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
