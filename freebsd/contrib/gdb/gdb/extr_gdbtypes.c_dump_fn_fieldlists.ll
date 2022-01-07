; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_dump_fn_fieldlists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_dump_fn_fieldlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.fn_field = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fn_fieldlists \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"[%d] name '%s' (\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c") length %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"[%d] physname '%s' (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"args \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fcontext \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"is_const %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"is_volatile %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"is_private %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"is_protected %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"is_stub %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"voffset %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32)* @dump_fn_fieldlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_fn_fieldlists(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fn_field*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i32 @TYPE_FN_FIELDLISTS(%struct.type* %10)
  %12 = load i32, i32* @gdb_stdout, align 4
  %13 = call i32 @gdb_print_host_address(i32 %11, i32 %12)
  %14 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %143, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_NFN_FIELDS(%struct.type* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %146

20:                                               ; preds = %15
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %21, i32 %22)
  store %struct.fn_field* %23, %struct.fn_field** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.type*, %struct.type** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TYPE_FN_FIELDLIST_NAME(%struct.type* %27, i32 %28)
  %30 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.type*, %struct.type** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TYPE_FN_FIELDLIST_NAME(%struct.type* %31, i32 %32)
  %34 = load i32, i32* @gdb_stdout, align 4
  %35 = call i32 @gdb_print_host_address(i32 %33, i32 %34)
  %36 = load %struct.type*, %struct.type** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %36, i32 %37)
  %39 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %139, %20
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.type*, %struct.type** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %42, i32 %43)
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %142

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %50, i32 %51)
  %53 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %54, i32 %55)
  %57 = load i32, i32* @gdb_stdout, align 4
  %58 = call i32 @gdb_print_host_address(i32 %56, i32 %57)
  %59 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 8
  %62 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %63, i32 %64)
  %66 = load i32, i32* @gdb_stdout, align 4
  %67 = call i32 @gdb_print_host_address(i32 %65, i32 %66)
  %68 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 8
  %74 = add nsw i32 %73, 2
  %75 = call i32 @recursive_dump_type(i32 %71, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 8
  %78 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @TYPE_FN_FIELD_ARGS(%struct.fn_field* %79, i32 %80)
  %82 = load i32, i32* @gdb_stdout, align 4
  %83 = call i32 @gdb_print_host_address(i32 %81, i32 %82)
  %84 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @TYPE_FN_FIELD_ARGS(%struct.fn_field* %85, i32 %86)
  %88 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %88, i32 %89)
  %91 = call i32 @TYPE_NFIELDS(i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @print_arg_types(i32 %87, i32 %91, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 8
  %96 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @TYPE_FN_FIELD_FCONTEXT(%struct.fn_field* %97, i32 %98)
  %100 = load i32, i32* @gdb_stdout, align 4
  %101 = call i32 @gdb_print_host_address(i32 %99, i32 %100)
  %102 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 8
  %105 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @TYPE_FN_FIELD_CONST(%struct.fn_field* %105, i32 %106)
  %108 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 8
  %111 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @TYPE_FN_FIELD_VOLATILE(%struct.fn_field* %111, i32 %112)
  %114 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 8
  %117 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @TYPE_FN_FIELD_PRIVATE(%struct.fn_field* %117, i32 %118)
  %120 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 8
  %123 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @TYPE_FN_FIELD_PROTECTED(%struct.fn_field* %123, i32 %124)
  %126 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 8
  %129 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @TYPE_FN_FIELD_STUB(%struct.fn_field* %129, i32 %130)
  %132 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 8
  %135 = load %struct.fn_field*, %struct.fn_field** %7, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field* %135, i32 %136)
  %138 = call i32 (i32, i8*, ...) @printfi_filtered(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %46
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %40

142:                                              ; preds = %40
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %15

146:                                              ; preds = %15
  ret void
}

declare dso_local i32 @printfi_filtered(i32, i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(i32, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLISTS(%struct.type*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i32 @recursive_dump_type(i32, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_ARGS(%struct.fn_field*, i32) #1

declare dso_local i32 @print_arg_types(i32, i32, i32) #1

declare dso_local i32 @TYPE_NFIELDS(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_FCONTEXT(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_CONST(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOLATILE(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PRIVATE(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PROTECTED(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_STUB(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
