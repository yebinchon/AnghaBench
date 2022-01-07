; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_string.c_stresc2chr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_string.c_stresc2chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stresc2chr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %4, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %186, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %189

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %174

17:                                               ; preds = %14
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %167 [
    i32 48, label %20
    i32 49, label %20
    i32 50, label %20
    i32 51, label %20
    i32 52, label %20
    i32 53, label %20
    i32 54, label %20
    i32 55, label %20
    i32 97, label %77
    i32 98, label %80
    i32 102, label %83
    i32 110, label %86
    i32 114, label %89
    i32 116, label %92
    i32 118, label %95
    i32 120, label %98
    i32 34, label %163
    i32 92, label %163
  ]

20:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 48
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %5, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %70

31:                                               ; preds = %20
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 55
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i8, i8* %5, align 1
  %38 = sext i8 %37 to i32
  %39 = mul nsw i32 %38, 8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %39, %43
  %45 = sub nsw i32 %44, 48
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %5, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %66

51:                                               ; preds = %36
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 55
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8, i8* %5, align 1
  %58 = sext i8 %57 to i32
  %59 = mul nsw i32 %58, 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %59, %62
  %64 = sub nsw i32 %63, 48
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %5, align 1
  br label %69

66:                                               ; preds = %51, %36
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %66, %56
  br label %73

70:                                               ; preds = %31, %20
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %3, align 8
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i8, i8* %5, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  store i8 %74, i8* %75, align 1
  br label %173

77:                                               ; preds = %17
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  store i8 7, i8* %78, align 1
  br label %173

80:                                               ; preds = %17
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  store i8 8, i8* %81, align 1
  br label %173

83:                                               ; preds = %17
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  store i8 12, i8* %84, align 1
  br label %173

86:                                               ; preds = %17
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  store i8 10, i8* %87, align 1
  br label %173

89:                                               ; preds = %17
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  store i8 13, i8* %90, align 1
  br label %173

92:                                               ; preds = %17
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  store i8 9, i8* %93, align 1
  br label %173

95:                                               ; preds = %17
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  store i8 11, i8* %96, align 1
  br label %173

98:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %155, %98
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %3, align 8
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %5, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %156

105:                                              ; preds = %99
  %106 = load i8, i8* %5, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sge i32 %107, 48
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i8, i8* %5, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sle i32 %111, 57
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %114, 16
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = add nsw i32 %115, %117
  %119 = sub nsw i32 %118, 48
  store i32 %119, i32* %7, align 4
  br label %155

120:                                              ; preds = %109, %105
  %121 = load i8, i8* %5, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 97
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i8, i8* %5, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 %126, 102
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = mul nsw i32 %129, 16
  %131 = load i8, i8* %5, align 1
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %130, %132
  %134 = sub nsw i32 %133, 97
  %135 = add nsw i32 %134, 10
  store i32 %135, i32* %7, align 4
  br label %154

136:                                              ; preds = %124, %120
  %137 = load i8, i8* %5, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 65
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load i8, i8* %5, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sle i32 %142, 70
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 %145, 16
  %147 = load i8, i8* %5, align 1
  %148 = sext i8 %147 to i32
  %149 = add nsw i32 %146, %148
  %150 = sub nsw i32 %149, 65
  %151 = add nsw i32 %150, 10
  store i32 %151, i32* %7, align 4
  br label %153

152:                                              ; preds = %140, %136
  br label %156

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %113
  br label %99

156:                                              ; preds = %152, %99
  %157 = load i32, i32* %7, align 4
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %4, align 8
  store i8 %158, i8* %159, align 1
  %161 = load i8*, i8** %3, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 -1
  store i8* %162, i8** %3, align 8
  br label %173

163:                                              ; preds = %17, %17
  %164 = load i8, i8* %5, align 1
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %4, align 8
  store i8 %164, i8* %165, align 1
  br label %173

167:                                              ; preds = %17
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  store i8 92, i8* %168, align 1
  %170 = load i8, i8* %5, align 1
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %167, %163, %156, %95, %92, %89, %86, %83, %80, %77, %73
  store i32 0, i32* %6, align 4
  br label %185

174:                                              ; preds = %14
  %175 = load i8, i8* %5, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 92
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %6, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i8, i8* %5, align 1
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %4, align 8
  store i8 %181, i8* %182, align 1
  br label %184

184:                                              ; preds = %180, %174
  br label %185

185:                                              ; preds = %184, %173
  br label %186

186:                                              ; preds = %185
  %187 = load i8*, i8** %3, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %3, align 8
  br label %9

189:                                              ; preds = %9
  %190 = load i8*, i8** %4, align 8
  store i8 0, i8* %190, align 1
  %191 = load i8*, i8** %4, align 8
  %192 = load i8*, i8** %2, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  ret i64 %195
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
