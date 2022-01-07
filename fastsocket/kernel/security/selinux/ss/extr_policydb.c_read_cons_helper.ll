; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_read_cons_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_read_cons_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_node = type { %struct.constraint_expr*, i8*, %struct.constraint_node* }
%struct.constraint_expr = type { i32, i32, i32, i8*, %struct.constraint_expr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CEXPR_MAXDEPTH = common dso_local global i32 0, align 4
@CEXPR_XTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.constraint_node**, i32, i32, i8*)* @read_cons_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cons_helper(%struct.constraint_node** %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.constraint_node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.constraint_node*, align 8
  %11 = alloca %struct.constraint_node*, align 8
  %12 = alloca %struct.constraint_expr*, align 8
  %13 = alloca %struct.constraint_expr*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.constraint_node** %0, %struct.constraint_node*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.constraint_node* null, %struct.constraint_node** %11, align 8
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %190, %4
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %193

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.constraint_node*
  store %struct.constraint_node* %27, %struct.constraint_node** %10, align 8
  %28 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  %29 = icmp ne %struct.constraint_node* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %194

33:                                               ; preds = %24
  %34 = load %struct.constraint_node*, %struct.constraint_node** %11, align 8
  %35 = icmp ne %struct.constraint_node* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  %38 = load %struct.constraint_node*, %struct.constraint_node** %11, align 8
  %39 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %38, i32 0, i32 2
  store %struct.constraint_node* %37, %struct.constraint_node** %39, align 8
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  %42 = load %struct.constraint_node**, %struct.constraint_node*** %6, align 8
  store %struct.constraint_node* %41, %struct.constraint_node** %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @next_entry(i32* %44, i8* %45, i32 8)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %5, align 4
  br label %194

51:                                               ; preds = %43
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  %56 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %15, align 4
  store %struct.constraint_expr* null, %struct.constraint_expr** %13, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %179, %51
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %182

65:                                               ; preds = %61
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 32, i32 %66)
  %68 = bitcast i8* %67 to %struct.constraint_expr*
  store %struct.constraint_expr* %68, %struct.constraint_expr** %12, align 8
  %69 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %70 = icmp ne %struct.constraint_expr* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %194

74:                                               ; preds = %65
  %75 = load %struct.constraint_expr*, %struct.constraint_expr** %13, align 8
  %76 = icmp ne %struct.constraint_expr* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %79 = load %struct.constraint_expr*, %struct.constraint_expr** %13, align 8
  %80 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %79, i32 0, i32 4
  store %struct.constraint_expr* %78, %struct.constraint_expr** %80, align 8
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %83 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  %84 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %83, i32 0, i32 0
  store %struct.constraint_expr* %82, %struct.constraint_expr** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @next_entry(i32* %86, i8* %87, i32 12)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %5, align 4
  br label %194

93:                                               ; preds = %85
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %99 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le32_to_cpu(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %105 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %110 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %112 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %174 [
    i32 129, label %114
    i32 132, label %121
    i32 128, label %121
    i32 131, label %130
    i32 130, label %141
  ]

114:                                              ; preds = %93
  %115 = load i32, i32* %19, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %194

120:                                              ; preds = %114
  br label %177

121:                                              ; preds = %93, %93
  %122 = load i32, i32* %19, align 4
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %194

127:                                              ; preds = %121
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %19, align 4
  br label %177

130:                                              ; preds = %93
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %194

138:                                              ; preds = %130
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %177

141:                                              ; preds = %93
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %146 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CEXPR_XTARGET, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %194

154:                                              ; preds = %144, %141
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* @CEXPR_MAXDEPTH, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %194

162:                                              ; preds = %154
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  %165 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  %166 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %165, i32 0, i32 2
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @ebitmap_read(i32* %166, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %194

173:                                              ; preds = %162
  br label %177

174:                                              ; preds = %93
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %194

177:                                              ; preds = %173, %138, %127, %120
  %178 = load %struct.constraint_expr*, %struct.constraint_expr** %12, align 8
  store %struct.constraint_expr* %178, %struct.constraint_expr** %13, align 8
  br label %179

179:                                              ; preds = %177
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %61

182:                                              ; preds = %61
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %194

188:                                              ; preds = %182
  %189 = load %struct.constraint_node*, %struct.constraint_node** %10, align 8
  store %struct.constraint_node* %189, %struct.constraint_node** %11, align 8
  br label %190

190:                                              ; preds = %188
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %20

193:                                              ; preds = %20
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %193, %185, %174, %170, %159, %151, %135, %124, %117, %91, %71, %49, %30
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
