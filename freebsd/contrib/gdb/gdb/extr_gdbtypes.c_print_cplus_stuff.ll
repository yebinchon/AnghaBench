; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_print_cplus_stuff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_print_cplus_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"n_baseclasses %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"nfn_fields %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"nfn_fields_total %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"virtual_field_bits (%d bits at *\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"private_field_bits (%d bits at *\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"protected_field_bits (%d bits at *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32)* @print_cplus_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cplus_stuff(%struct.type* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i64 @TYPE_N_BASECLASSES(%struct.type* %6)
  %8 = call i32 @printfi_filtered(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i64 @TYPE_NFN_FIELDS(%struct.type* %10)
  %12 = call i32 @printfi_filtered(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i64 @TYPE_NFN_FIELDS_TOTAL(%struct.type* %14)
  %16 = call i32 @printfi_filtered(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %15)
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i64 @TYPE_N_BASECLASSES(%struct.type* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.type*, %struct.type** %3, align 8
  %23 = call i64 @TYPE_N_BASECLASSES(%struct.type* %22)
  %24 = call i32 @printfi_filtered(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load %struct.type*, %struct.type** %3, align 8
  %26 = call i32* @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %25)
  %27 = load i32, i32* @gdb_stdout, align 4
  %28 = call i32 @gdb_print_host_address(i32* %26, i32 %27)
  %29 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.type*, %struct.type** %3, align 8
  %31 = call i32* @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %30)
  %32 = load %struct.type*, %struct.type** %3, align 8
  %33 = call i64 @TYPE_N_BASECLASSES(%struct.type* %32)
  %34 = call i32 @print_bit_vector(i32* %31, i64 %33)
  %35 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %36

36:                                               ; preds = %20, %2
  %37 = load %struct.type*, %struct.type** %3, align 8
  %38 = call i64 @TYPE_NFIELDS(%struct.type* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %36
  %41 = load %struct.type*, %struct.type** %3, align 8
  %42 = call i32* @TYPE_FIELD_PRIVATE_BITS(%struct.type* %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.type*, %struct.type** %3, align 8
  %47 = call i64 @TYPE_NFIELDS(%struct.type* %46)
  %48 = call i32 @printfi_filtered(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %47)
  %49 = load %struct.type*, %struct.type** %3, align 8
  %50 = call i32* @TYPE_FIELD_PRIVATE_BITS(%struct.type* %49)
  %51 = load i32, i32* @gdb_stdout, align 4
  %52 = call i32 @gdb_print_host_address(i32* %50, i32 %51)
  %53 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.type*, %struct.type** %3, align 8
  %55 = call i32* @TYPE_FIELD_PRIVATE_BITS(%struct.type* %54)
  %56 = load %struct.type*, %struct.type** %3, align 8
  %57 = call i64 @TYPE_NFIELDS(%struct.type* %56)
  %58 = call i32 @print_bit_vector(i32* %55, i64 %57)
  %59 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %44, %40
  %61 = load %struct.type*, %struct.type** %3, align 8
  %62 = call i32* @TYPE_FIELD_PROTECTED_BITS(%struct.type* %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.type*, %struct.type** %3, align 8
  %67 = call i64 @TYPE_NFIELDS(%struct.type* %66)
  %68 = call i32 @printfi_filtered(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %67)
  %69 = load %struct.type*, %struct.type** %3, align 8
  %70 = call i32* @TYPE_FIELD_PROTECTED_BITS(%struct.type* %69)
  %71 = load i32, i32* @gdb_stdout, align 4
  %72 = call i32 @gdb_print_host_address(i32* %70, i32 %71)
  %73 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.type*, %struct.type** %3, align 8
  %75 = call i32* @TYPE_FIELD_PROTECTED_BITS(%struct.type* %74)
  %76 = load %struct.type*, %struct.type** %3, align 8
  %77 = call i64 @TYPE_NFIELDS(%struct.type* %76)
  %78 = call i32 @print_bit_vector(i32* %75, i64 %77)
  %79 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %64, %60
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.type*, %struct.type** %3, align 8
  %83 = call i64 @TYPE_NFN_FIELDS(%struct.type* %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.type*, %struct.type** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dump_fn_fieldlists(%struct.type* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  ret void
}

declare dso_local i32 @printfi_filtered(i32, i8*, i64) #1

declare dso_local i64 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_NFN_FIELDS_TOTAL(%struct.type*) #1

declare dso_local i32 @gdb_print_host_address(i32*, i32) #1

declare dso_local i32* @TYPE_FIELD_VIRTUAL_BITS(%struct.type*) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @print_bit_vector(i32*, i64) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i64 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32* @TYPE_FIELD_PRIVATE_BITS(%struct.type*) #1

declare dso_local i32* @TYPE_FIELD_PROTECTED_BITS(%struct.type*) #1

declare dso_local i32 @dump_fn_fieldlists(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
