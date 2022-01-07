; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_processor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"H8/300\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"H8/500\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"80960KA\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"80960KB\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"80960CA\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"80960MC\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"68020\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"68000\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"68008\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"68010\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"68030\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"68040\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"68060\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cpu32\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"isa-a:nodiv\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"isa-a\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"isa-a:mac\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"isa-a:emac\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"isa-aplus\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"isa-aplus:mac\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"isa-b:nousp\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"isa-b:nousp:mac\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"isa-b:nousp:emac\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"isa-b\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"isa-b:mac\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"isa-b:emac\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"isa-b:float\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"isa-b:float:mac\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"isa-b:float:emac\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ieee_write_processor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_processor(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @bfd_get_arch_info(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 161, label %20
    i32 160, label %27
    i32 159, label %34
    i32 158, label %68
  ]

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @bfd_printable_name(i32* %13)
  %15 = call i32 @ieee_write_id(i32* %12, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %11
  br label %105

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ieee_write_id(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %107

26:                                               ; preds = %20
  br label %105

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ieee_write_id(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %107

33:                                               ; preds = %27
  br label %105

34:                                               ; preds = %1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %38 [
    i32 155, label %39
    i32 154, label %39
    i32 153, label %46
    i32 156, label %53
    i32 152, label %60
    i32 151, label %60
  ]

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %34, %34, %38
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ieee_write_id(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %107

45:                                               ; preds = %39
  br label %67

46:                                               ; preds = %34
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @ieee_write_id(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %46
  br label %67

53:                                               ; preds = %34
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ieee_write_id(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %53
  br label %67

60:                                               ; preds = %34, %34
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @ieee_write_id(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %59, %52, %45
  br label %105

68:                                               ; preds = %1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %72 [
    i32 150, label %73
    i32 149, label %74
    i32 148, label %75
    i32 147, label %76
    i32 146, label %77
    i32 145, label %78
    i32 144, label %79
    i32 157, label %80
    i32 140, label %81
    i32 143, label %82
    i32 141, label %83
    i32 142, label %84
    i32 139, label %85
    i32 137, label %86
    i32 138, label %87
    i32 130, label %88
    i32 128, label %89
    i32 129, label %90
    i32 136, label %91
    i32 131, label %92
    i32 135, label %93
    i32 134, label %94
    i32 132, label %95
    i32 133, label %96
  ]

72:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %97

73:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %97

74:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %97

75:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %97

76:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %97

77:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %97

78:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %97

79:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %97

80:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %97

81:                                               ; preds = %68
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %97

82:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %97

83:                                               ; preds = %68
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %97

84:                                               ; preds = %68
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  br label %97

85:                                               ; preds = %68
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  br label %97

86:                                               ; preds = %68
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  br label %97

87:                                               ; preds = %68
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  br label %97

88:                                               ; preds = %68
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  br label %97

89:                                               ; preds = %68
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  br label %97

90:                                               ; preds = %68
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  br label %97

91:                                               ; preds = %68
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8** %5, align 8
  br label %97

92:                                               ; preds = %68
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %97

93:                                               ; preds = %68
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %5, align 8
  br label %97

94:                                               ; preds = %68
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %5, align 8
  br label %97

95:                                               ; preds = %68
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %5, align 8
  br label %97

96:                                               ; preds = %68
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %5, align 8
  br label %97

97:                                               ; preds = %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72
  %98 = load i32*, i32** %3, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @ieee_write_id(i32* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %2, align 4
  br label %107

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %67, %33, %26, %19
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %102, %64, %57, %50, %43, %31, %24, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_3__* @bfd_get_arch_info(i32*) #1

declare dso_local i32 @ieee_write_id(i32*, i8*) #1

declare dso_local i8* @bfd_printable_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
