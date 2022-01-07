; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_add_line_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_add_line_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_info_table = type { %struct.line_info*, %struct.line_info*, i32 }
%struct.line_info = type { i32, i32, i32, %struct.line_info*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_info_table*, i32, i8*, i32, i32, i32)* @add_line_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_line_info(%struct.line_info_table* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.line_info_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.line_info*, align 8
  %15 = alloca %struct.line_info*, align 8
  %16 = alloca %struct.line_info*, align 8
  store %struct.line_info_table* %0, %struct.line_info_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 40, i32* %13, align 4
  %17 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %18 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i8* @bfd_alloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.line_info*
  store %struct.line_info* %22, %struct.line_info** %14, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.line_info*, %struct.line_info** %14, align 8
  %25 = getelementptr inbounds %struct.line_info, %struct.line_info* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.line_info*, %struct.line_info** %14, align 8
  %28 = getelementptr inbounds %struct.line_info, %struct.line_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.line_info*, %struct.line_info** %14, align 8
  %31 = getelementptr inbounds %struct.line_info, %struct.line_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.line_info*, %struct.line_info** %14, align 8
  %34 = getelementptr inbounds %struct.line_info, %struct.line_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %6
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %45 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = call i8* @bfd_alloc(i32 %46, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.line_info*, %struct.line_info** %14, align 8
  %53 = getelementptr inbounds %struct.line_info, %struct.line_info* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.line_info*, %struct.line_info** %14, align 8
  %55 = getelementptr inbounds %struct.line_info, %struct.line_info* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load %struct.line_info*, %struct.line_info** %14, align 8
  %60 = getelementptr inbounds %struct.line_info, %struct.line_info* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcpy(i32* %61, i8* %62)
  br label %64

64:                                               ; preds = %58, %43
  br label %68

65:                                               ; preds = %37, %6
  %66 = load %struct.line_info*, %struct.line_info** %14, align 8
  %67 = getelementptr inbounds %struct.line_info, %struct.line_info* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %70 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %69, i32 0, i32 1
  %71 = load %struct.line_info*, %struct.line_info** %70, align 8
  %72 = icmp ne %struct.line_info* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.line_info*, %struct.line_info** %14, align 8
  %75 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %76 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %75, i32 0, i32 1
  %77 = load %struct.line_info*, %struct.line_info** %76, align 8
  %78 = call i64 @new_line_sorts_after(%struct.line_info* %74, %struct.line_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %73, %68
  %81 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %82 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %81, i32 0, i32 1
  %83 = load %struct.line_info*, %struct.line_info** %82, align 8
  %84 = load %struct.line_info*, %struct.line_info** %14, align 8
  %85 = getelementptr inbounds %struct.line_info, %struct.line_info* %84, i32 0, i32 3
  store %struct.line_info* %83, %struct.line_info** %85, align 8
  %86 = load %struct.line_info*, %struct.line_info** %14, align 8
  %87 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %88 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %87, i32 0, i32 1
  store %struct.line_info* %86, %struct.line_info** %88, align 8
  %89 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %90 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %89, i32 0, i32 0
  %91 = load %struct.line_info*, %struct.line_info** %90, align 8
  %92 = icmp ne %struct.line_info* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = load %struct.line_info*, %struct.line_info** %14, align 8
  %95 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %96 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %95, i32 0, i32 0
  store %struct.line_info* %94, %struct.line_info** %96, align 8
  br label %97

97:                                               ; preds = %93, %80
  br label %177

98:                                               ; preds = %73
  %99 = load %struct.line_info*, %struct.line_info** %14, align 8
  %100 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %101 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %100, i32 0, i32 0
  %102 = load %struct.line_info*, %struct.line_info** %101, align 8
  %103 = call i64 @new_line_sorts_after(%struct.line_info* %99, %struct.line_info* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %134, label %105

105:                                              ; preds = %98
  %106 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %107 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %106, i32 0, i32 0
  %108 = load %struct.line_info*, %struct.line_info** %107, align 8
  %109 = getelementptr inbounds %struct.line_info, %struct.line_info* %108, i32 0, i32 3
  %110 = load %struct.line_info*, %struct.line_info** %109, align 8
  %111 = icmp ne %struct.line_info* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load %struct.line_info*, %struct.line_info** %14, align 8
  %114 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %115 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %114, i32 0, i32 0
  %116 = load %struct.line_info*, %struct.line_info** %115, align 8
  %117 = getelementptr inbounds %struct.line_info, %struct.line_info* %116, i32 0, i32 3
  %118 = load %struct.line_info*, %struct.line_info** %117, align 8
  %119 = call i64 @new_line_sorts_after(%struct.line_info* %113, %struct.line_info* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %112, %105
  %122 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %123 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %122, i32 0, i32 0
  %124 = load %struct.line_info*, %struct.line_info** %123, align 8
  %125 = getelementptr inbounds %struct.line_info, %struct.line_info* %124, i32 0, i32 3
  %126 = load %struct.line_info*, %struct.line_info** %125, align 8
  %127 = load %struct.line_info*, %struct.line_info** %14, align 8
  %128 = getelementptr inbounds %struct.line_info, %struct.line_info* %127, i32 0, i32 3
  store %struct.line_info* %126, %struct.line_info** %128, align 8
  %129 = load %struct.line_info*, %struct.line_info** %14, align 8
  %130 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %131 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %130, i32 0, i32 0
  %132 = load %struct.line_info*, %struct.line_info** %131, align 8
  %133 = getelementptr inbounds %struct.line_info, %struct.line_info* %132, i32 0, i32 3
  store %struct.line_info* %129, %struct.line_info** %133, align 8
  br label %176

134:                                              ; preds = %112, %98
  %135 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %136 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %135, i32 0, i32 1
  %137 = load %struct.line_info*, %struct.line_info** %136, align 8
  store %struct.line_info* %137, %struct.line_info** %15, align 8
  %138 = load %struct.line_info*, %struct.line_info** %15, align 8
  %139 = getelementptr inbounds %struct.line_info, %struct.line_info* %138, i32 0, i32 3
  %140 = load %struct.line_info*, %struct.line_info** %139, align 8
  store %struct.line_info* %140, %struct.line_info** %16, align 8
  br label %141

141:                                              ; preds = %155, %134
  %142 = load %struct.line_info*, %struct.line_info** %16, align 8
  %143 = icmp ne %struct.line_info* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load %struct.line_info*, %struct.line_info** %14, align 8
  %146 = load %struct.line_info*, %struct.line_info** %15, align 8
  %147 = call i64 @new_line_sorts_after(%struct.line_info* %145, %struct.line_info* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load %struct.line_info*, %struct.line_info** %14, align 8
  %151 = load %struct.line_info*, %struct.line_info** %16, align 8
  %152 = call i64 @new_line_sorts_after(%struct.line_info* %150, %struct.line_info* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %160

155:                                              ; preds = %149, %144
  %156 = load %struct.line_info*, %struct.line_info** %16, align 8
  store %struct.line_info* %156, %struct.line_info** %15, align 8
  %157 = load %struct.line_info*, %struct.line_info** %16, align 8
  %158 = getelementptr inbounds %struct.line_info, %struct.line_info* %157, i32 0, i32 3
  %159 = load %struct.line_info*, %struct.line_info** %158, align 8
  store %struct.line_info* %159, %struct.line_info** %16, align 8
  br label %141

160:                                              ; preds = %154, %141
  %161 = load %struct.line_info*, %struct.line_info** %15, align 8
  %162 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %163 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %162, i32 0, i32 0
  store %struct.line_info* %161, %struct.line_info** %163, align 8
  %164 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %165 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %164, i32 0, i32 0
  %166 = load %struct.line_info*, %struct.line_info** %165, align 8
  %167 = getelementptr inbounds %struct.line_info, %struct.line_info* %166, i32 0, i32 3
  %168 = load %struct.line_info*, %struct.line_info** %167, align 8
  %169 = load %struct.line_info*, %struct.line_info** %14, align 8
  %170 = getelementptr inbounds %struct.line_info, %struct.line_info* %169, i32 0, i32 3
  store %struct.line_info* %168, %struct.line_info** %170, align 8
  %171 = load %struct.line_info*, %struct.line_info** %14, align 8
  %172 = load %struct.line_info_table*, %struct.line_info_table** %7, align 8
  %173 = getelementptr inbounds %struct.line_info_table, %struct.line_info_table* %172, i32 0, i32 0
  %174 = load %struct.line_info*, %struct.line_info** %173, align 8
  %175 = getelementptr inbounds %struct.line_info, %struct.line_info* %174, i32 0, i32 3
  store %struct.line_info* %171, %struct.line_info** %175, align 8
  br label %176

176:                                              ; preds = %160, %121
  br label %177

177:                                              ; preds = %176, %97
  ret void
}

declare dso_local i8* @bfd_alloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i64 @new_line_sorts_after(%struct.line_info*, %struct.line_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
