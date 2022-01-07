; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_parse_dacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_parse_dacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32 }
%struct.cifs_acl = type { i32, i32, i32 }
%struct.cifs_fattr = type { i32 }
%struct.cifs_ace = type { i32, i32, i32, i32 }

@S_IRWXUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ACL too small to parse DACL\00", align 1
@DBG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DACL revision %d size %d num aces %d\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DACL memory allocation error\00", align 1
@sid_everyone = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@sid_authusers = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_acl*, i8*, %struct.cifs_sid*, %struct.cifs_sid*, %struct.cifs_fattr*)* @parse_dacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dacl(%struct.cifs_acl* %0, i8* %1, %struct.cifs_sid* %2, %struct.cifs_sid* %3, %struct.cifs_fattr* %4) #0 {
  %6 = alloca %struct.cifs_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sid*, align 8
  %9 = alloca %struct.cifs_sid*, align 8
  %10 = alloca %struct.cifs_fattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cifs_ace**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cifs_acl* %0, %struct.cifs_acl** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cifs_sid* %2, %struct.cifs_sid** %8, align 8
  store %struct.cifs_sid* %3, %struct.cifs_sid** %9, align 8
  store %struct.cifs_fattr* %4, %struct.cifs_fattr** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %20 = icmp ne %struct.cifs_acl* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @S_IRWXUGO, align 4
  %23 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %24 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %241

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %30 = bitcast %struct.cifs_acl* %29 to i8*
  %31 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %32 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  %37 = icmp ult i8* %28, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %241

40:                                               ; preds = %27
  %41 = load i32, i32* @DBG2, align 4
  %42 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %43 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %47 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %51 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call i32 @cFYI(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49, i32 %53)
  %55 = load i32, i32* @S_IRWXUGO, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %58 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %62 = bitcast %struct.cifs_acl* %61 to i8*
  store i8* %62, i8** %14, align 8
  store i32 12, i32* %13, align 4
  %63 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %64 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %240

69:                                               ; preds = %40
  %70 = load i32, i32* @S_IRWXU, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @S_IRWXG, align 4
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* @S_IRWXU, align 4
  %73 = load i32, i32* @S_IRWXG, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @S_IRWXO, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @ULONG_MAX, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 8
  %82 = icmp ugt i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %241

84:                                               ; preds = %69
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.cifs_ace** @kmalloc(i32 %88, i32 %89)
  store %struct.cifs_ace** %90, %struct.cifs_ace*** %15, align 8
  %91 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %92 = icmp ne %struct.cifs_ace** %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %241

95:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %234, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %237

100:                                              ; preds = %96
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = bitcast i8* %104 to %struct.cifs_ace*
  %106 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %106, i64 %108
  store %struct.cifs_ace* %105, %struct.cifs_ace** %109, align 8
  %110 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %110, i64 %112
  %114 = load %struct.cifs_ace*, %struct.cifs_ace** %113, align 8
  %115 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %114, i32 0, i32 3
  %116 = load %struct.cifs_sid*, %struct.cifs_sid** %8, align 8
  %117 = call i64 @compare_sids(i32* %115, %struct.cifs_sid* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %100
  %120 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %120, i64 %122
  %124 = load %struct.cifs_ace*, %struct.cifs_ace** %123, align 8
  %125 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %127, i64 %129
  %131 = load %struct.cifs_ace*, %struct.cifs_ace** %130, align 8
  %132 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %135 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %134, i32 0, i32 0
  %136 = call i32 @access_flags_to_mode(i32 %126, i32 %133, i32* %135, i32* %16)
  br label %137

137:                                              ; preds = %119, %100
  %138 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %138, i64 %140
  %142 = load %struct.cifs_ace*, %struct.cifs_ace** %141, align 8
  %143 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %142, i32 0, i32 3
  %144 = load %struct.cifs_sid*, %struct.cifs_sid** %9, align 8
  %145 = call i64 @compare_sids(i32* %143, %struct.cifs_sid* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %137
  %148 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %148, i64 %150
  %152 = load %struct.cifs_ace*, %struct.cifs_ace** %151, align 8
  %153 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %155, i64 %157
  %159 = load %struct.cifs_ace*, %struct.cifs_ace** %158, align 8
  %160 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %163 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %162, i32 0, i32 0
  %164 = call i32 @access_flags_to_mode(i32 %154, i32 %161, i32* %163, i32* %17)
  br label %165

165:                                              ; preds = %147, %137
  %166 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %166, i64 %168
  %170 = load %struct.cifs_ace*, %struct.cifs_ace** %169, align 8
  %171 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %170, i32 0, i32 3
  %172 = call i64 @compare_sids(i32* %171, %struct.cifs_sid* @sid_everyone)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %165
  %175 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %175, i64 %177
  %179 = load %struct.cifs_ace*, %struct.cifs_ace** %178, align 8
  %180 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %182, i64 %184
  %186 = load %struct.cifs_ace*, %struct.cifs_ace** %185, align 8
  %187 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %190 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %189, i32 0, i32 0
  %191 = call i32 @access_flags_to_mode(i32 %181, i32 %188, i32* %190, i32* %18)
  br label %192

192:                                              ; preds = %174, %165
  %193 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %193, i64 %195
  %197 = load %struct.cifs_ace*, %struct.cifs_ace** %196, align 8
  %198 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %197, i32 0, i32 3
  %199 = call i64 @compare_sids(i32* %198, %struct.cifs_sid* @sid_authusers)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %192
  %202 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %202, i64 %204
  %206 = load %struct.cifs_ace*, %struct.cifs_ace** %205, align 8
  %207 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %209, i64 %211
  %213 = load %struct.cifs_ace*, %struct.cifs_ace** %212, align 8
  %214 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.cifs_fattr*, %struct.cifs_fattr** %10, align 8
  %217 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %216, i32 0, i32 0
  %218 = call i32 @access_flags_to_mode(i32 %208, i32 %215, i32* %217, i32* %18)
  br label %219

219:                                              ; preds = %201, %192
  %220 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %220, i64 %222
  %224 = load %struct.cifs_ace*, %struct.cifs_ace** %223, align 8
  %225 = bitcast %struct.cifs_ace* %224 to i8*
  store i8* %225, i8** %14, align 8
  %226 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %226, i64 %228
  %230 = load %struct.cifs_ace*, %struct.cifs_ace** %229, align 8
  %231 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %219
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %96

237:                                              ; preds = %96
  %238 = load %struct.cifs_ace**, %struct.cifs_ace*** %15, align 8
  %239 = call i32 @kfree(%struct.cifs_ace** %238)
  br label %240

240:                                              ; preds = %237, %40
  br label %241

241:                                              ; preds = %240, %93, %83, %38, %21
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.cifs_ace** @kmalloc(i32, i32) #1

declare dso_local i64 @compare_sids(i32*, %struct.cifs_sid*) #1

declare dso_local i32 @access_flags_to_mode(i32, i32, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.cifs_ace**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
