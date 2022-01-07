; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_complete_on_cmdlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_complete_on_cmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8*, i64, i64, i32, %struct.cmd_list_element* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @complete_on_cmdlist(%struct.cmd_list_element* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_list_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_list_element*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmd_list_element* %0, %struct.cmd_list_element** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %11, align 4
  store i32 10, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xmalloc(i32 %17)
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.cmd_list_element*, %struct.cmd_list_element** %4, align 8
  store %struct.cmd_list_element* %20, %struct.cmd_list_element** %7, align 8
  br label %21

21:                                               ; preds = %149, %3
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %23 = icmp ne %struct.cmd_list_element* %22, null
  br i1 %23, label %24, label %153

24:                                               ; preds = %21
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %26 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @strncmp(i8* %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %148, label %32

32:                                               ; preds = %24
  %33 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %34 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %148, label %37

37:                                               ; preds = %32
  %38 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %39 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %44 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %148

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %9, align 4
  %54 = load i8**, i8*** %8, align 8
  %55 = bitcast i8** %54 to i8*
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @xrealloc(i8* %55, i32 %59)
  %61 = inttoptr i64 %60 to i8**
  store i8** %61, i8*** %8, align 8
  br label %62

62:                                               ; preds = %51, %47
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %66 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %64, %68
  %70 = add nsw i32 %69, 1
  %71 = call i64 @xmalloc(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8**, i8*** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %62
  %81 = load i8**, i8*** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %87 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i8* %85, i8* %88)
  br label %145

90:                                               ; preds = %62
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ugt i8* %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i8**, i8*** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %101 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  %109 = call i32 @strcpy(i8* %99, i8* %108)
  br label %144

110:                                              ; preds = %90
  %111 = load i8**, i8*** %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @strncpy(i8* %115, i8* %116, i32 %122)
  %124 = load i8**, i8*** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = getelementptr inbounds i8, i8* %128, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8**, i8*** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %141 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcat(i8* %139, i8* %142)
  br label %144

144:                                              ; preds = %110, %94
  br label %145

145:                                              ; preds = %144, %80
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %42, %32, %24
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %151 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %150, i32 0, i32 4
  %152 = load %struct.cmd_list_element*, %struct.cmd_list_element** %151, align 8
  store %struct.cmd_list_element* %152, %struct.cmd_list_element** %7, align 8
  br label %21

153:                                              ; preds = %21
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8**, i8*** %8, align 8
  %158 = call i32 @xfree(i8** %157)
  store i8** null, i8*** %8, align 8
  br label %173

159:                                              ; preds = %153
  %160 = load i8**, i8*** %8, align 8
  %161 = bitcast i8** %160 to i8*
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 8
  %166 = trunc i64 %165 to i32
  %167 = call i64 @xrealloc(i8* %161, i32 %166)
  %168 = inttoptr i64 %167 to i8**
  store i8** %168, i8*** %8, align 8
  %169 = load i8**, i8*** %8, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  store i8* null, i8** %172, align 8
  br label %173

173:                                              ; preds = %159, %156
  %174 = load i8**, i8*** %8, align 8
  ret i8** %174
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
