; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_fund_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_fund_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@current_objfile = common dso_local global i32 0, align 4
@FT_VOID = common dso_local global i32 0, align 4
@FT_BOOLEAN = common dso_local global i32 0, align 4
@FT_CHAR = common dso_local global i32 0, align 4
@FT_SIGNED_CHAR = common dso_local global i32 0, align 4
@FT_UNSIGNED_CHAR = common dso_local global i32 0, align 4
@FT_SHORT = common dso_local global i32 0, align 4
@FT_SIGNED_SHORT = common dso_local global i32 0, align 4
@FT_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@FT_SIGNED_INTEGER = common dso_local global i32 0, align 4
@FT_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@FT_LONG = common dso_local global i32 0, align 4
@FT_SIGNED_LONG = common dso_local global i32 0, align 4
@FT_UNSIGNED_LONG = common dso_local global i32 0, align 4
@FT_LONG_LONG = common dso_local global i32 0, align 4
@FT_SIGNED_LONG_LONG = common dso_local global i32 0, align 4
@FT_UNSIGNED_LONG_LONG = common dso_local global i32 0, align 4
@FT_FLOAT = common dso_local global i32 0, align 4
@FT_DBL_PREC_FLOAT = common dso_local global i32 0, align 4
@FT_EXT_PREC_FLOAT = common dso_local global i32 0, align 4
@FT_COMPLEX = common dso_local global i32 0, align 4
@FT_DBL_PREC_COMPLEX = common dso_local global i32 0, align 4
@FT_EXT_PREC_COMPLEX = common dso_local global i32 0, align 4
@FT_lo_user = common dso_local global i32 0, align 4
@FT_hi_user = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"DIE @ 0x%x \22%s\22, unexpected fundamental type 0x%x\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i32)* @decode_fund_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_fund_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.type* null, %struct.type** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %103 [
    i32 128, label %5
    i32 151, label %9
    i32 140, label %13
    i32 150, label %19
    i32 138, label %23
    i32 133, label %27
    i32 139, label %31
    i32 134, label %35
    i32 129, label %39
    i32 143, label %43
    i32 137, label %47
    i32 132, label %51
    i32 142, label %55
    i32 136, label %59
    i32 131, label %63
    i32 141, label %67
    i32 135, label %71
    i32 130, label %75
    i32 144, label %79
    i32 147, label %83
    i32 145, label %87
    i32 149, label %91
    i32 148, label %95
    i32 146, label %99
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @current_objfile, align 4
  %7 = load i32, i32* @FT_VOID, align 4
  %8 = call %struct.type* @dwarf_fundamental_type(i32 %6, i32 %7)
  store %struct.type* %8, %struct.type** %3, align 8
  br label %103

9:                                                ; preds = %1
  %10 = load i32, i32* @current_objfile, align 4
  %11 = load i32, i32* @FT_BOOLEAN, align 4
  %12 = call %struct.type* @dwarf_fundamental_type(i32 %10, i32 %11)
  store %struct.type* %12, %struct.type** %3, align 8
  br label %103

13:                                               ; preds = %1
  %14 = load i32, i32* @current_objfile, align 4
  %15 = load i32, i32* @FT_VOID, align 4
  %16 = call %struct.type* @dwarf_fundamental_type(i32 %14, i32 %15)
  store %struct.type* %16, %struct.type** %3, align 8
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call %struct.type* @lookup_pointer_type(%struct.type* %17)
  store %struct.type* %18, %struct.type** %3, align 8
  br label %103

19:                                               ; preds = %1
  %20 = load i32, i32* @current_objfile, align 4
  %21 = load i32, i32* @FT_CHAR, align 4
  %22 = call %struct.type* @dwarf_fundamental_type(i32 %20, i32 %21)
  store %struct.type* %22, %struct.type** %3, align 8
  br label %103

23:                                               ; preds = %1
  %24 = load i32, i32* @current_objfile, align 4
  %25 = load i32, i32* @FT_SIGNED_CHAR, align 4
  %26 = call %struct.type* @dwarf_fundamental_type(i32 %24, i32 %25)
  store %struct.type* %26, %struct.type** %3, align 8
  br label %103

27:                                               ; preds = %1
  %28 = load i32, i32* @current_objfile, align 4
  %29 = load i32, i32* @FT_UNSIGNED_CHAR, align 4
  %30 = call %struct.type* @dwarf_fundamental_type(i32 %28, i32 %29)
  store %struct.type* %30, %struct.type** %3, align 8
  br label %103

31:                                               ; preds = %1
  %32 = load i32, i32* @current_objfile, align 4
  %33 = load i32, i32* @FT_SHORT, align 4
  %34 = call %struct.type* @dwarf_fundamental_type(i32 %32, i32 %33)
  store %struct.type* %34, %struct.type** %3, align 8
  br label %103

35:                                               ; preds = %1
  %36 = load i32, i32* @current_objfile, align 4
  %37 = load i32, i32* @FT_SIGNED_SHORT, align 4
  %38 = call %struct.type* @dwarf_fundamental_type(i32 %36, i32 %37)
  store %struct.type* %38, %struct.type** %3, align 8
  br label %103

39:                                               ; preds = %1
  %40 = load i32, i32* @current_objfile, align 4
  %41 = load i32, i32* @FT_UNSIGNED_SHORT, align 4
  %42 = call %struct.type* @dwarf_fundamental_type(i32 %40, i32 %41)
  store %struct.type* %42, %struct.type** %3, align 8
  br label %103

43:                                               ; preds = %1
  %44 = load i32, i32* @current_objfile, align 4
  %45 = load i32, i32* @FT_INTEGER, align 4
  %46 = call %struct.type* @dwarf_fundamental_type(i32 %44, i32 %45)
  store %struct.type* %46, %struct.type** %3, align 8
  br label %103

47:                                               ; preds = %1
  %48 = load i32, i32* @current_objfile, align 4
  %49 = load i32, i32* @FT_SIGNED_INTEGER, align 4
  %50 = call %struct.type* @dwarf_fundamental_type(i32 %48, i32 %49)
  store %struct.type* %50, %struct.type** %3, align 8
  br label %103

51:                                               ; preds = %1
  %52 = load i32, i32* @current_objfile, align 4
  %53 = load i32, i32* @FT_UNSIGNED_INTEGER, align 4
  %54 = call %struct.type* @dwarf_fundamental_type(i32 %52, i32 %53)
  store %struct.type* %54, %struct.type** %3, align 8
  br label %103

55:                                               ; preds = %1
  %56 = load i32, i32* @current_objfile, align 4
  %57 = load i32, i32* @FT_LONG, align 4
  %58 = call %struct.type* @dwarf_fundamental_type(i32 %56, i32 %57)
  store %struct.type* %58, %struct.type** %3, align 8
  br label %103

59:                                               ; preds = %1
  %60 = load i32, i32* @current_objfile, align 4
  %61 = load i32, i32* @FT_SIGNED_LONG, align 4
  %62 = call %struct.type* @dwarf_fundamental_type(i32 %60, i32 %61)
  store %struct.type* %62, %struct.type** %3, align 8
  br label %103

63:                                               ; preds = %1
  %64 = load i32, i32* @current_objfile, align 4
  %65 = load i32, i32* @FT_UNSIGNED_LONG, align 4
  %66 = call %struct.type* @dwarf_fundamental_type(i32 %64, i32 %65)
  store %struct.type* %66, %struct.type** %3, align 8
  br label %103

67:                                               ; preds = %1
  %68 = load i32, i32* @current_objfile, align 4
  %69 = load i32, i32* @FT_LONG_LONG, align 4
  %70 = call %struct.type* @dwarf_fundamental_type(i32 %68, i32 %69)
  store %struct.type* %70, %struct.type** %3, align 8
  br label %103

71:                                               ; preds = %1
  %72 = load i32, i32* @current_objfile, align 4
  %73 = load i32, i32* @FT_SIGNED_LONG_LONG, align 4
  %74 = call %struct.type* @dwarf_fundamental_type(i32 %72, i32 %73)
  store %struct.type* %74, %struct.type** %3, align 8
  br label %103

75:                                               ; preds = %1
  %76 = load i32, i32* @current_objfile, align 4
  %77 = load i32, i32* @FT_UNSIGNED_LONG_LONG, align 4
  %78 = call %struct.type* @dwarf_fundamental_type(i32 %76, i32 %77)
  store %struct.type* %78, %struct.type** %3, align 8
  br label %103

79:                                               ; preds = %1
  %80 = load i32, i32* @current_objfile, align 4
  %81 = load i32, i32* @FT_FLOAT, align 4
  %82 = call %struct.type* @dwarf_fundamental_type(i32 %80, i32 %81)
  store %struct.type* %82, %struct.type** %3, align 8
  br label %103

83:                                               ; preds = %1
  %84 = load i32, i32* @current_objfile, align 4
  %85 = load i32, i32* @FT_DBL_PREC_FLOAT, align 4
  %86 = call %struct.type* @dwarf_fundamental_type(i32 %84, i32 %85)
  store %struct.type* %86, %struct.type** %3, align 8
  br label %103

87:                                               ; preds = %1
  %88 = load i32, i32* @current_objfile, align 4
  %89 = load i32, i32* @FT_EXT_PREC_FLOAT, align 4
  %90 = call %struct.type* @dwarf_fundamental_type(i32 %88, i32 %89)
  store %struct.type* %90, %struct.type** %3, align 8
  br label %103

91:                                               ; preds = %1
  %92 = load i32, i32* @current_objfile, align 4
  %93 = load i32, i32* @FT_COMPLEX, align 4
  %94 = call %struct.type* @dwarf_fundamental_type(i32 %92, i32 %93)
  store %struct.type* %94, %struct.type** %3, align 8
  br label %103

95:                                               ; preds = %1
  %96 = load i32, i32* @current_objfile, align 4
  %97 = load i32, i32* @FT_DBL_PREC_COMPLEX, align 4
  %98 = call %struct.type* @dwarf_fundamental_type(i32 %96, i32 %97)
  store %struct.type* %98, %struct.type** %3, align 8
  br label %103

99:                                               ; preds = %1
  %100 = load i32, i32* @current_objfile, align 4
  %101 = load i32, i32* @FT_EXT_PREC_COMPLEX, align 4
  %102 = call %struct.type* @dwarf_fundamental_type(i32 %100, i32 %101)
  store %struct.type* %102, %struct.type** %3, align 8
  br label %103

103:                                              ; preds = %1, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %13, %9, %5
  %104 = load %struct.type*, %struct.type** %3, align 8
  %105 = icmp eq %struct.type* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i32, i32* @current_objfile, align 4
  %108 = load i32, i32* @FT_INTEGER, align 4
  %109 = call %struct.type* @dwarf_fundamental_type(i32 %107, i32 %108)
  store %struct.type* %109, %struct.type** %3, align 8
  %110 = load i32, i32* @FT_lo_user, align 4
  %111 = load i32, i32* %2, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @FT_hi_user, align 4
  %116 = icmp ule i32 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* @DIE_ID, align 4
  %119 = load i32, i32* @DIE_NAME, align 4
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %113
  br label %123

123:                                              ; preds = %122, %103
  %124 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %124
}

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
