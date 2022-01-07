; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_script.c_load_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_script.c_load_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i8*, i8*, %struct.file*, i32 }
%struct.file = type { i32 }
%struct.pt_regs = type { i32 }

@BINPRM_BUF_SIZE = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.pt_regs*)* @load_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_script(%struct.linux_binprm* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %14 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %19 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 35
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %27 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 33
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %2
  %34 = load i32, i32* @ENOEXEC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

36:                                               ; preds = %25
  %37 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %38 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %37, i32 0, i32 2
  %39 = load %struct.file*, %struct.file** %38, align 8
  %40 = call i32 @allow_write_access(%struct.file* %39)
  %41 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %42 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %41, i32 0, i32 2
  %43 = load %struct.file*, %struct.file** %42, align 8
  %44 = call i32 @fput(%struct.file* %43)
  %45 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %46 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %45, i32 0, i32 2
  store %struct.file* null, %struct.file** %46, align 8
  %47 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %48 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %55 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 10)
  store i8* %57, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %36
  %60 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %61 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %59, %36
  %68 = load i8*, i8** %6, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %72 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ugt i8* %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %75
  %88 = load i8*, i8** %6, align 8
  store i8 0, i8* %88, align 1
  br label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %87
  br label %69

91:                                               ; preds = %89, %69
  %92 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %93 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %109, %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 9
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  br label %96

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* @ENOEXEC, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

120:                                              ; preds = %112
  %121 = load i8*, i8** %6, align 8
  store i8* %121, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %122

122:                                              ; preds = %140, %120
  %123 = load i8*, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 32
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 9
  br label %137

137:                                              ; preds = %132, %127, %122
  %138 = phi i1 [ false, %127 ], [ false, %122 ], [ %136, %132 ]
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  br label %122

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %156, %143
  %145 = load i8*, i8** %6, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 32
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %6, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 9
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ true, %144 ], [ %153, %149 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  store i8 0, i8* %157, align 1
  br label %144

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i8*, i8** %6, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @strcpy(i8* %17, i8* %166)
  %168 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %169 = call i32 @remove_arg_zero(%struct.linux_binprm* %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

174:                                              ; preds = %165
  %175 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %176 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %175, i32 0, i32 1
  %177 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %178 = call i32 @copy_strings_kernel(i32 1, i8** %176, %struct.linux_binprm* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

183:                                              ; preds = %174
  %184 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %185 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %183
  %191 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %192 = call i32 @copy_strings_kernel(i32 1, i8** %8, %struct.linux_binprm* %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

197:                                              ; preds = %190
  %198 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %199 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %197, %183
  %203 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %204 = call i32 @copy_strings_kernel(i32 1, i8** %7, %struct.linux_binprm* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

209:                                              ; preds = %202
  %210 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %211 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %215 = call i32 @bprm_change_interp(i8* %17, %struct.linux_binprm* %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

220:                                              ; preds = %209
  %221 = call %struct.file* @open_exec(i8* %17)
  store %struct.file* %221, %struct.file** %9, align 8
  %222 = load %struct.file*, %struct.file** %9, align 8
  %223 = call i64 @IS_ERR(%struct.file* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.file*, %struct.file** %9, align 8
  %227 = call i32 @PTR_ERR(%struct.file* %226)
  store i32 %227, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

228:                                              ; preds = %220
  %229 = load %struct.file*, %struct.file** %9, align 8
  %230 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %231 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %230, i32 0, i32 2
  store %struct.file* %229, %struct.file** %231, align 8
  %232 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %233 = call i32 @prepare_binprm(%struct.linux_binprm* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

238:                                              ; preds = %228
  %239 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %240 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %241 = call i32 @search_binary_handler(%struct.linux_binprm* %239, %struct.pt_regs* %240)
  store i32 %241, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %242

242:                                              ; preds = %238, %236, %225, %218, %207, %195, %181, %172, %117, %33
  %243 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @allow_write_access(%struct.file*) #2

declare dso_local i32 @fput(%struct.file*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #2

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #2

declare dso_local i32 @bprm_change_interp(i8*, %struct.linux_binprm*) #2

declare dso_local %struct.file* @open_exec(i8*) #2

declare dso_local i64 @IS_ERR(%struct.file*) #2

declare dso_local i32 @PTR_ERR(%struct.file*) #2

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #2

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*, %struct.pt_regs*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
