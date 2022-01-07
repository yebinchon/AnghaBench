; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtput.c_do_fdtput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtput.c_do_fdtput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8*, i8**, i32)* @do_fdtput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fdtput(%struct.display_info* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.display_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.display_info* %0, %struct.display_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @utilfdt_read(i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %149

20:                                               ; preds = %4
  %21 = load %struct.display_info*, %struct.display_info** %6, align 8
  %22 = getelementptr inbounds %struct.display_info, %struct.display_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %130 [
    i32 128, label %24
    i32 131, label %59
    i32 129, label %87
    i32 130, label %106
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.display_info*, %struct.display_info** %6, align 8
  %30 = getelementptr inbounds %struct.display_info, %struct.display_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @create_paths(i8** %11, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %149

39:                                               ; preds = %33, %24
  %40 = load %struct.display_info*, %struct.display_info** %6, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 2
  %45 = call i32 @encode_value(%struct.display_info* %40, i8** %42, i32 %44, i8** %10, i32* %13)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @store_key_value(i8** %11, i8* %49, i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47, %39
  store i32 -1, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %47
  br label %130

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %14, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  %66 = icmp ne i32 %64, 0
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %86

69:                                               ; preds = %67
  %70 = load %struct.display_info*, %struct.display_info** %6, align 8
  %71 = getelementptr inbounds %struct.display_info, %struct.display_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @create_paths(i8** %11, i8* %76)
  store i32 %77, i32* %14, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @create_node(i8** %11, i8* %80)
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i8**, i8*** %8, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %8, align 8
  br label %60

86:                                               ; preds = %67
  br label %130

87:                                               ; preds = %20
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %14, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %92, 0
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %97, label %105

97:                                               ; preds = %95
  %98 = load i8*, i8** %11, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @delete_node(i8* %98, i8* %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %97
  %103 = load i8**, i8*** %8, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %8, align 8
  br label %88

105:                                              ; preds = %95
  br label %130

106:                                              ; preds = %20
  %107 = load i8**, i8*** %8, align 8
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %12, align 8
  %109 = load i8**, i8*** %8, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %8, align 8
  br label %111

111:                                              ; preds = %126, %106
  %112 = load i32, i32* %14, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %9, align 4
  %117 = icmp sgt i32 %115, 1
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ false, %111 ], [ %117, %114 ]
  br i1 %119, label %120, label %129

120:                                              ; preds = %118
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8**, i8*** %8, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @delete_prop(i8* %121, i8* %122, i8* %124)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %120
  %127 = load i8**, i8*** %8, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %8, align 8
  br label %111

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %20, %129, %105, %86, %58
  %131 = load i32, i32* %14, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @fdt_pack(i8* %134)
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @utilfdt_write(i8* %136, i8* %137)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i8*, i8** %10, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %38, %19
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i8* @utilfdt_read(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_paths(i8**, i8*) #1

declare dso_local i32 @encode_value(%struct.display_info*, i8**, i32, i8**, i32*) #1

declare dso_local i32 @store_key_value(i8**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @create_node(i8**, i8*) #1

declare dso_local i32 @delete_node(i8*, i8*) #1

declare dso_local i32 @delete_prop(i8*, i8*, i8*) #1

declare dso_local i32 @fdt_pack(i8*) #1

declare dso_local i32 @utilfdt_write(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
